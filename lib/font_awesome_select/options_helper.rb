module FontAwesomeSelect
  module OptionsHelper
    include ActionView::Helpers::TagHelper

    def fa_icons_options(*args)
      Icons::NAMES.map do |icon_name|
        [fa_icon_select_label_for(icon_name), icon_name]
      end
    end

    def fa_selectize_icons_options(*args)
      Icons::NAMES.map do |icon_name|
        { text: fa_icon_select_label_for(icon_name), value: icon_name }
      end
    end

    private

    def fa_icon_select_label_for(icon_name)
      ["<i class='fa fa-fw fa-#{ icon_name }'></i>", icon_name].join(' ')
    end
  end
end
