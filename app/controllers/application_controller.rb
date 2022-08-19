# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :ensure_user_logged_in

  def ensure_user_logged_in
    redirect_to '/login' unless current_user
  end

  def current_user
    return @current_user if @current_user

    p @current_user
    user_id = session[:current_user_id]
    @current_user = User.find(user_id) if user_id
  end
end
