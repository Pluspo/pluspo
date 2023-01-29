module ApplicationHelper
  PHONE_NUMBER_REGEXP = /\+?[ 0-9()-]{9,}[0-9)]/

  def auto_phone_to(html)
    html.gsub(PHONE_NUMBER_REGEXP) do |match|
      phone_to(match)
    end.html_safe
  end
end
