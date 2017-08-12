require 'test_helper'
# Static Pages Controller Testing
class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Presstee' # set var
  end
  test 'should get root' do
    get root_url # get root web page
    assert_response :success # check success
    assert_select 'title', "#{@base_title} | Home"
  end
=begin Commented out due to home now being the above root test
  test 'should get home' do
    get static_pages_home_url # get the web page
    assert_response :success # check success
    assert_select 'title', "#{@base_title} | Home" # check web page title
  end
=end
  test 'should get about' do
    get static_pages_about_url # get the web page
    assert_response :success # check success
    assert_select 'title', "#{@base_title} | About"
  end
  test 'should get contact' do
    get static_pages_contact_url # get the web page
      assert_response :success # check success
    assert_select 'title', "#{@base_title} | Contact"
  end
end
