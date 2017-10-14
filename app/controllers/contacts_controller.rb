class ContactsController < ApplicationController

  # public methods - they are allowoed outside the class
  def new
    @contact = Contact.new
  end

  def index
    @contacts = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "#{@contact.name} has been saved"
      redirect_to contacts_path
    else
      flash[:alert] = "Please correct the errors"
      render :new
    end
  end


  # Private methods that can only be accessed inside the class itself only
  private
    # we pass this item into the create contact method
    def contact_params
      params.require(:contact).permit(:name, :email, :note, :active)
    end

end
