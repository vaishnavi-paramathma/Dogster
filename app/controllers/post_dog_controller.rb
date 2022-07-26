class PostDogController < ApplicationController

  def add_animals
    dog_name = params[:dog_name]
    breed = params[:breed]
    gender=params[:gender]
    age = params[:age]
    neutered = params[:neutered]=="Yes" ? true : false
    vaccinated =  params[:vaccinated]=="Yes" ? true : false
    dogs = params[:good_with_dogs]=="Yes" ? true : false
    cats = params[:good_with_cats]=="Yes" ? true : false
    kids = params[:good_with_kids]=="Yes" ? true : false
    my_story = params[:my_story]
    info = params[:additional_adoption_info]
    image=params[:image]
    owner_name=params[:owner_name]
    phone_number=params[:ph_no]
    state=params[:state]
    city=params[:city]
    additional_info=params[:additional_info]

    
    @details= AnimalList.new(
      dog_name: dog_name,
      breed: breed,
      gender: gender,
      age: age,
      neutered: neutered,
      vaccinated: vaccinated,
      good_with_dogs: dogs,
      good_with_cats: cats,
      good_with_kids: kids,
      my_story: my_story,
      image: image, 
      additional_adoption_info: info,
      owner_name: owner_name,
      ph_no: phone_number,
      state: state,
      city: city,
      additional_info: additional_info)


      if @details.save
        render :plain => 'success'
      else
        render plain: "fail"
      end
  end
  
  
  end

