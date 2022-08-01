class PostDogController < ApplicationController
 
   def posts
    @animals_details = Animal.all
   end
  
   def new
    @animal = Animal.new
    end
  
  def add_animals
    
    # dog_name = params[:dog_name]
    # breed = params[:breed]
    # gender=params[:gender]
    # age = params[:age]
    # neutered = details[:neutered]=="Yes" ? true : false
    # # vaccinated = details[:vaccinated]=="Yes" ? true : false
    # # dogs = details[:good_with_dogs]=="Yes" ? true : false
    # # cats = details[:good_with_cats]=="Yes" ? true : false
    # # kids = details[:good_with_kids]=="Yes" ? true : false
   
    # my_story = params[:my_story]
    # image= params[:image]
    # owner_name= params[:owner_name]
    # phone_number= params[:ph_no]
    # state= params[:state]
    # city= params[:city]
    # additional_info= params[:additional_info]

    @animal = Animal.new(animals_params)
    p "============================================="
    p "============================================="
    p "============================================="
    p animals_params[:image]
    if @animal.save
      redirect_to "/posts"
    else
      render plain: "fail"
    end


  end

 
  def list
    @animal = Animal.new
  end
  
  private

  # def details
  #   params.require(:details).permit(:dog_name, :breed, :gender, :age, :my_story, :image, :owner_name, :ph_no, :state, :city, :additional_info ) 
  # end

  def animals_params
    params.require(:animal).permit(:dog_name, :breed, :gender, :age, :neutered,:vaccinated, :good_with_dogs, :good_with_cats,:good_with_kids, :my_story, :image, :owner_name, :ph_no, :state, :city, :additional_info )
  end
  
end
