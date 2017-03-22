require "font_awesome_select/version"

module FontAwesomeSelect
  extend ActiveSupport::Autoload

  autoload :Icons
  autoload :OptionsHelper
end

require 'font_awesome_select/railtie' if defined?(Rails)
