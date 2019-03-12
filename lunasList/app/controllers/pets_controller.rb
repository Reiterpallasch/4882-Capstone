class PetsController < ApplicationController
  def show
        @pets = Pet.all
  end
end
