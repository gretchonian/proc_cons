class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  # def update
  #   @contact = Contact.create(contact_params)
  #   # if @contact.valid?
  #   #   redirect_to contact_path(@contact)
  #   # else
  #   #   render :new, status: :unprocessable_entity
  #   # end
  # end

  private

  # def contact_params
  #   params.require(:contact).permit(:name, :email, :phone_number, :project_details)
  # end
end
