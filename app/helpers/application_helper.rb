module ApplicationHelper

  def navigation_link(body, url, a_class, add_class, fa_icon)
    active = current_page?(url) ? "active" : ""
    aa_class = "#{active} #{a_class}"
    content_tag :li, class: aa_class do
      link_to url, class: add_class do
      	content_tag(:i, class: fa_icon)
      	content_tag(:span, body)
      end
    end
  end

  def bootstrap_class_for(flash_type)
    case flash_type.to_sym
    when :success, :notice
      "alert-success"
    when :error
      "alert-danger"
    when :alert, :warning
      "alert-warning"
    when :info
      "alert-info"
    end
  end

  def error_messages_for(record, field_name)
    return if record.blank? || record.errors[field_name].blank?

    error_messages = record.errors[field_name].collect(&:to_s).join(', ')

    raw(content_tag(:div, error_messages, class: 'help-inline text-danger'))
  end
end
