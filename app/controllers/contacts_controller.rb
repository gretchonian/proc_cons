class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact.valid?
      redirect_to thankyou_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:company_name, :address, :phone_number, :email, :project_details)
  end
end
