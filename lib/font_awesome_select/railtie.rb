module FontAwesomeSelect
  class Railtie < Rails::Railtie
    initializer 'font_awesome_select.include_options_helper' do
      ActiveSupport.on_load(:action_view) do
        include FontAwesomeSelect::OptionsHelper
      end
    end
  end
end
