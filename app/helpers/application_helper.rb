# Application Helper
module ApplicationHelper
  # Returns the title of the web page on a per-page basis
  def full_title(page_title = '')
    base_title = 'Presstee' # set var
    if page_title.empty? # if the page_title var is empty/no value then
      base_title # page_title is equal to base_title else
    else
      base_title + ' | ' + page_title
    end
  end
end