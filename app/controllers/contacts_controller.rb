class ContactsController < ApplicationController
before_action :load_contact, only: [:edit, :update, :show, :destroy]

  # public methods - they are allowoed outside the class

  def new
    @contact = Contact.new
  end

  def index
    @contacts = Contact.all
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      flash[:notice] = "#{@contact.name} was updated!"
      redirect_to contacts_path
    else
      flash[:notice] = "Please correct your errors!"
      render :edit
    end
  end

  def show
    #code
  end

  def destroy
    @contact.destroy
    flash[:notice] = "Contact Deleted"
    redirect_to contacts_path
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

  # DRY methods
  def load_contact
    @contact = Contact.find(params[:id])
  end

  # Private methods that can only be accessed inside the class itself only
  private
  # we pass this item into the create contact method
  def contact_params
    params.require(:contact).permit(:name, :email, :note, :active)
  end

end
