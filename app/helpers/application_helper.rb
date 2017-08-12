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
  
  # Add active class to current web page
  def is_active?(link_path)
    current_page?(link_path) ? "active" : ""
  end
  
  # Custom bootstrap flash messages with toastr
  def custom_flash_messages
    flash_messages = []
    flash.each do |type, message|
      type = 'success' if type == 'notice'
      type = 'error'   if type == 'alert'
      text = "<script>toastr.#{type}('#{message}');</script>"
      flash_messages << text.html_safe if message
    end
    flash_messages.join("\n").html_safe
  end
end