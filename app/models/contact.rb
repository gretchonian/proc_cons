class Contact < ApplicationRecord
  validates :company_name, presence: true, :on => :create
  validates_format_of :phone_number, :with => /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/, :on => :create
  validates_format_of :email, :with => /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, :on => :create
  validates_presence_of :project_details

  # after_create :send_email
  # after_create :send_confirmation

  # def send_email
  #   NotificationMail.inquiry_submitted(self).deliver
  # end

  # def send_confirmation
  #   NotificationMail.inquiry_thankyou(self).deliver
  # end


end
