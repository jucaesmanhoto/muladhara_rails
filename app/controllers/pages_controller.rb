class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @professionals = Professional.all
    @places = Place.all
    @specialties = Specialty.all
    # Criar uma action de @cards que mostre todos os cards de @professionals && @places
  end
end
