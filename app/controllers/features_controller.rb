# A frequent practice is to place the standard CRUD actions in each
# controller in the following order: index, show, new, edit, create, update
# and destroy.

class FeaturesController < ApplicationController
  def index
    @features = Feature.all
  end

  def show
    @feature = Feature.find(params[:id])
  end

  def new
    @feature = Feature.new
  end

  def edit
    @feature = Feature.find(params[:id])
  end

  def create
    @feature = Feature.new(feature_params)

    if @feature.save
      redirect_to @feature
    else
      render 'new'
    end
  end

  def update
    @feature = Feature.find(params[:id])

    if @feature.update(article_params)
      redirect_to @feature
    else
      render 'edit'
    end
  end

  private
    def feature_params
      params.require(:feature).permit(:title, :text)
    end
end
