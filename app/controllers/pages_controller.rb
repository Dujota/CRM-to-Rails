class PagesController < ApplicationController

  def home
    @contact_count = Contact.count
  end
end
