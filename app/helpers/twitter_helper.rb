module TwitterHelper
  def check_if_redacted(text)
    content_tag(:div, class: 'redacted') {text}
  end
end
