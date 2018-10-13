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
end
