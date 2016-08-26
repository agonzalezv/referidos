class Referral < ApplicationRecord

  belongs_to :user

  attr_accessor :terms_and_conditions

  validates :name, :surname, :document_id, :email, presence: true
  validates :terms_and_conditions, on: :create, acceptance: true
  validates :email, :document_id, uniqueness: true

  #TODO: Configure mailer
  #TODO: email and documentID are unique

  # after_create :send_admin_mail
  # def send_admin_mail
    # AdminMailer.new_user_waiting_for_approval(self).deliver
  #end

end
