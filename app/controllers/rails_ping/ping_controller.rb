# frozen_string_literal: true

module RailsPing
  class PingController < ApplicationController
    def show
      respond_to do |format|
        format.html { render plain: hash_to_text(status_content), status: status_code }
        format.json { render json: status_content, status: status_code }
      end
    end

    private

    def hash_to_text(hash)
      hash.map { |data| data.join(':') }.join("\n")
    end

    def status_content
      return @status_content if defined?(@status_content) && @status_content

      @status_content = {
        status: readable_status_code(status_code)
      }
      all_checks.each do |(name, check)|
        @status_content[name] = readable_status_code(status_code_name(check))
      end
      @status_content
    end

    def status_code
      @status_code ||= status_code_name(all_checks.all?(&:last))
    end

    def status_code_name(value)
      value ? :ok : :service_unavailable
    end

    def readable_status_code(status_code)
      status_code.to_s.humanize.upcase
    end

    def all_checks
      @all_checks ||= RailsPing.checks.map { |name, check| [name, check.call] }
    end
  end
end
