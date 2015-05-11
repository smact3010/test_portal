class FeaturesController < ApplicationController
  def new
  end

  def create
    @feature = Feature.new(feature_params)

    @feature.save
    redirect_to @feature
  end

  private
    def feature_params
      params.require(:feature).permit(:title, :text)
    end
end
