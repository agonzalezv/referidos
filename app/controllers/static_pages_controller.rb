class StaticPagesController < ApplicationController
  before_action :authenticate_user!

  def show
    render template: "static/#{params[:page]}", layout: 'static'
  end
end
