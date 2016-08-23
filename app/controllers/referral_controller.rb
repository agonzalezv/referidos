class ReferralController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def show
  end

  def new
    @user = current_user
    @referral = @user.referrals.build
  end

  def create
  end

  private

end
