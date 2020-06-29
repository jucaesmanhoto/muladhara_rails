class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @professionals = Professional.all
    @places = Place.all
  end
end
