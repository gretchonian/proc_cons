class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact.create(contact_params)
  end

  private
  def contact_params
    contact_params(require).permit(:company_name, :address, :phone_number, :email, :project_details)
  end
end
