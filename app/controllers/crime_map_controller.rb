class CrimeMapController < ApplicationController
  before_filter :authenticate_user!
  def index
    #@crimes = current_user.crimes.all
    @crimes = Crime.all
  end
end
