# frozen_string_literal: true

$post_dog = nil
class PostDogController < ApplicationController
  include Pagy::Backend
  @@array = []
  @@presence_value = 0
  def posts
    @animals_details = DogList.all.order('created_at DESC')
    @presence_value = presence_value_returner
    @search_params = array_returner

    @@array = []
    @@presence_value = 0
    # @pagy, @pagy_post = pagy(DogList.all, items: 3)
    #   @posts = DogList.order(:@animals_details).page params[:posts]

    #   p"==============================================================================="
    #   p @animals_details.ids
  end

  def search
    @parameter = params[:search]
    @@array = []
    puts @parameter
    @results = DogList.where('city LIKE?', "%#{@parameter}%") || DogList.where('state LIKE?', "%#{@parameter}")
    @@presence_value = 1
    @results.each do |result|
      @@array.push(result.id)
      puts result.city
    end
    redirect_to '/posts'
  end

  def new
    @animal = DogList.new
  end

  def add_animals
    @animal = DogList.new(animals_params)
    @animal[:users_id] = @current_user.id
    if @animal.save
      redirect_to '/posts'
    else
      flash[:error] = @animal.errors.full_messages.join(',')
      redirect_to '/list'
    end
  end

  def show
    id = params[:id]
    post_dog = DogList.find(id)
    $dog_details = post_dog
    redirect_to '/post_dog/dog_details'
  end

  def list; end

  def array_returner
    @@array
  end

  def presence_value_returner
    @@presence_value
  end

  def dogs_wishlist
    current_user_id = session[:current_user_id]

    if current_user_id.nil?
      render plain: false
    else
      dog_list = params[:dog_id]
      puts "dog_id is #{dog_list}"
      puts "current_user_id is #{current_user_id}"
      dogs_wishlist = Wishlist.create dog_list_id: dog_list, current_user_id: current_user_id
      redirect_to '/user_profile'
      # render plain: true
    end
  end

  private

  def animals_params
    params.require(:animal).permit(:dog_name, :breed, :gender, :age, :neutered, :vaccinated, :good_with_dogs,
                                   :good_with_cats, :good_with_kids, :my_story, :image, :ph_no, :state, :city, :additional_adoption_info)
  end
end
