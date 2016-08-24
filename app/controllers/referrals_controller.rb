class ReferralsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :set_referral, only: [:show,:edit]

  def index
  end

  def show
  end

  def new
    @referral = @user.referrals.build
  end

  def create
    @referral = @user.referrals.build(referral_params)
    flash[:notice] = 'Referral was created.' if @referral.save
    respond_with @referral, location: -> { root_path } #TODO: Temporary
  end

  private

  def set_user
    @user = current_user
  end

  def set_referral
    @referral = Referral.find(params[:id])
  end

  def referral_params
    params.require(:referral).permit(:name, :surname, :document_id,
                                     :email,:city,:phone, :mobile,
                                     :created_at,:updated_at,:user_id)
  end



end
