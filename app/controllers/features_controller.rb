class FeaturesController < ApplicationController
  def new
  end

  def create
    render plain: params[:feature].inspect
  end
end
