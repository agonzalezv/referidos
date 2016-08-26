class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # TODO: Temporary
  def confirmation_required?
    false
  end

  has_many :referrals
  accepts_nested_attributes_for :referrals

  # TODO: custom validation against DB table

  # TODO: configure mailers

  validates :name, :surname, :document_id, :email, presence: true
  validates :email, :document_id, uniqueness: true
  validates :document_id, numericality: { only_integer: true } #TODO: Allow letters too

  # after_create :send_admin_mail
  # def send_admin_mail
  #   # AdminMailer.new_user_waiting_for_approval(self).deliver
  # end

end
