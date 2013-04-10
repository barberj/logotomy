require "logotomy/version"

module Logotomy
  class ActiveRecord::LogSubscriber
    def sql event
    end
  end

  class ActionController::LogSubscriber
    def start_processing event
    end

    def process_action event
    end

    def halted_callback event
    end

    def send_file event
    end

    def redirect_to event
    end

    def send_data event
    end
  end

  class ActionView::LogSubscriber
    def render_template event
    end

    alias :render_partial :render_template
    alias :render_collection :render_template
  end
end
