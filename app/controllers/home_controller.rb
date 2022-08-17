# frozen_string_literal: true

class HomeController < ApplicationController
  skip_before_action :ensure_user_logged_in
  def index
    @current_user = @current_user
    if current_user
      @user = User.find(current_user.id)
      @presence = 1
    else
      @presence = 0
    end
  end

  def aboutus
    @current_user = @current_user
    if current_user
      @user = User.find(current_user.id)
      @presence = 1
    else
      @presence = 0
    end
  end

  def user_destroy
    # destroy_id = DogList.where(users_id: sessions[:users_id], id:post_id)

    cur_post_id = params[:id]
    cur_post = DogList.find_by(id: cur_post_id)
    cur_post.destroy
    redirect_to '/posts'
  end

  def self.down
    remove_column :DogList, :id
  end

  def user_profile
    @dog = DogList.joins(:wishlist).all.map do |wishlist|
      wishlist
    end
  end

  def user_profile_creator
    current_user
    dog_id = params[:dog_id]
    @wishlist = Wishlist.new(dog_list_id: dog_id, current_user_id: current_user.id)
    if @wishlist.save
      redirect_to "/user_profile/#{dog_id}"
    else
      render plain: 'Failed'
    end
  end

  def wishlist_destroy
    puts params[:wishlist_id]
    cur_wishlist = Wishlist.find(params[:wishlist_id])
    cur_wishlist.destroy
    redirect_to '/posts'
  end
end
