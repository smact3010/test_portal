# A frequent practice is to place the standard CRUD actions in each
# controller in the following order: index, show, new, edit, create, update
# and destroy.

class FeaturesController < ApplicationController
  def show
    @feature = Feature.find(params[:id])
  end

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
