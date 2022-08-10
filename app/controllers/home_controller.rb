# frozen_string_literal: true

class HomeController < ApplicationController
  skip_before_action :ensure_user_logged_in
  def index
    @current_user = @current_user
  end

  def aboutus; end

  def destroy
    #  destroy_id = DogList.where(users_id: sessions[:users_id], id:post_id)
    puts params[:post_id]
    cur_post_id = params[:post_id]
    cur_post = DogList.find(cur_post_id)
    cur_post.destroy
    redirect_to '/posts'
  end

  def user_profile
    @dog = DogList.joins(:wishlist).all.map do |wishlist|
      wishlist
    end
  end

  def user_profile_creator
    current_user
    dog_id = params[:dog_id]
    @wishlist = WishList.new()
  end


end
