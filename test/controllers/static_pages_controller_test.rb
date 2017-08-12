require 'test_helper'
# Static Pages Controller Testing
class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Presstee' # set var
  end
  test 'should get root' do
    get root_url # get root web page
    assert_response :success # check success
    assert_select 'title', "#{@base_title}"
    assert_select 
  end
  test 'should get features' do
    get static_pages_features_url # get the features web page
    assert_response :success # check success
    assert_select 'title', "#{@base_title} | Features" # check browser/tab title
  end
=begin Commented out due to home now being the above root test
  test 'should get home' do
    get static_pages_home_url # get the web page
    assert_response :success # check success
    assert_select 'title', "#{@base_title} | Home" # check web page title
  end
=end
  test 'should get about' do
    get static_pages_about_url # get the about web page
    assert_response :success # check success
    assert_select 'title', "#{@base_title} | About" # check browser/tab title
  end
  test 'should get contact' do
    get static_pages_contact_url # get the contact web page
    assert_response :success # check success
    assert_select 'title', "#{@base_title} | Contact" # check browser/tab title
  end
end
