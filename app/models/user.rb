class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :referrals

  # TODO
  # validates_acceptance_of :terms_and_conditions, on: :create, accept: '1'

  validates :name, :surname, :document_id, :email, presence: true

  after_create :send_admin_mail
  def send_admin_mail
    # AdminMailer.new_user_waiting_for_approval(self).deliver
  end

end
