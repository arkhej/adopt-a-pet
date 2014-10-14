class ImportedPetsController < ApplicationController
  before_action :set_imported_pet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin_user!

  decorates_assigned :imported_pets
  decorates_assigned :imported_pet

  # GET /imported_pets
  def index
    @imported_pets = ImportedPet.where(pet_id: nil).all
  end

  # GET /imported_pets/1
  def show
  end

  # GET /imported_pets/new
  def new
    @imported_pet = ImportedPet.new
  end

  # GET /imported_pets/1/edit
  def edit
  end

  # POST /imported_pets
  def create
    @imported_pet = ImportedPet.new(imported_pet_params)

    if @imported_pet.save
      redirect_to @imported_pet, notice: 'Imported pet was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /imported_pets/1
  def update
    if imported_pet.update(imported_pet_params)
      unless imported_pet.pet
        json_object = imported_pet.data_to_json
        pet = Tentacles::PetFactory.pet_from_imported_pet_or_object(imported_pet, json_object)
        Tentacles::PetFactory.save_pet_and_imported_pet(pet, imported_pet, json_object)
      end

      redirect_to imported_pets_url, notice: 'Imported pet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /imported_pets/1
  def destroy
    imported_pet.destroy
    redirect_to imported_pets_url, notice: 'Imported pet was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_imported_pet
    @imported_pet = ImportedPet.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def imported_pet_params
    params.require(:imported_pet).permit(:pet_id, :data, :logs)
  end
end
