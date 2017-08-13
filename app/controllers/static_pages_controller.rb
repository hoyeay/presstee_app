# Controller for the web apps static pages
class StaticPagesController < ApplicationController
  # skip authentication for the following methods
  skip_before_action :authenticate_user!, 
                     :only => [:home, :features, :about, :contact]
  def home
  end
  def features
  end
  def about
  end
  def contact
  end
end
