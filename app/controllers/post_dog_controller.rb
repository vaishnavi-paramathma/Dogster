$post_dog = nil
class PostDogController < ApplicationController 
  # skip_before_action :ensure_user_logged_in
  @@array=[]
  @@presence_value = 0
  def posts
    @animals_details = DogList.all
    @presence = 0
    @presence_value = presence_value_returner
    @search_params = array_returner
    if @search_params == []
    @presence = 1
    end
   
    @@array = []
    @@presence_value = 0

    
  end
  def search
      @parameter = params[:search]
      @@array=[]
      puts @parameter
      @results = DogList.where("city LIKE?","%" +@parameter +"%")
      puts @results
     @@presence_value = 1
      @results.each do|result|
        @@array.push(result.id)
        puts result.city
      end
      redirect_to "/posts"
 end
  
  def new
    @animal = DogList.new
  end
  
  def add_animals
    animal = DogList.new(animals_params)
   
    p animals_params[:image]
    if animal.save
      redirect_to "/posts"
    else
      render plain: "fail"
    end
  end
  def show
    id = params[:id]
    post_dog = DogList.find(id)
    $dog_details = post_dog
    redirect_to '/post_dog/dummy'
  end
  def list
    @animal = DogList.new
  end
  def array_returner
    return @@array
  end
  def presence_value_returner
    return @@presence_value
  end

    
    
  private

  def animals_params
    params.require(:animal).permit(:dog_name, :breed, :gender, :age, :neutered,:vaccinated, :good_with_dogs, :good_with_cats,:good_with_kids, :my_story, :image, :ph_no, :state, :city, :additional_adoption_info, :users_id )
  end
 
end
