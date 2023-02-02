module ApplicationHelper
  PHONE_NUMBER_REGEXP = /\+?[ 0-9()-]{9,}[0-9)]/

  def all_auto_link(html, option)
    html = auto_link(html, option)
    html.gsub(PHONE_NUMBER_REGEXP) do |match|
      phone_to(match)
    end.html_safe
  end
end
