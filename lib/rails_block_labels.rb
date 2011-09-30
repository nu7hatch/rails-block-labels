require 'rails'

class ActionView::Helpers::InstanceTag
  def to_label_tag(text = nil, options = {}, &block)
    options = options.stringify_keys
    tag_value = options.delete("value")
    name_and_id = options.dup

    if name_and_id["for"]
      name_and_id["id"] = name_and_id["for"]
    else
      name_and_id.delete("id")
    end

    add_default_name_and_id_for_value(tag_value, name_and_id)
    options.delete("index")
    options["for"] ||= name_and_id["id"]

    content = if text.blank?
      method_and_value = tag_value.present? ? "#{method_name}.#{tag_value}" : method_name
      I18n.t("helpers.label.#{object_name}.#{method_and_value}", :default => "").presence
    else
      text.to_s
    end

    content ||= if object && object.class.respond_to?(:human_attribute_name)
      object.class.human_attribute_name(method_name)
    end

    content ||= method_name.humanize
    content += capture(&block)
    label_tag(name_and_id["id"], content.html_safe, options)
  end
end
