class Referral < ApplicationRecord

  belongs_to :user

  validates :name, :surname, :document_id, :email, presence: true

  #TODO: Configure mailer
  #TODO: email and documentID are unique

  # after_create :send_admin_mail
  # def send_admin_mail
    # AdminMailer.new_user_waiting_for_approval(self).deliver
  #end

end
