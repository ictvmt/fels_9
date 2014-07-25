class ActivitiesController < ApplicationController
  before_action :signed_in_user, only: [:update]

  def create
  end

end