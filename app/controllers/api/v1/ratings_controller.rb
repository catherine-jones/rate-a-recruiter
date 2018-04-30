class Api::V1::RatingsController < Api::V1::BaseController
  def index
    respond_with Rating.all
  end

  def create
    respond_with :api, :v1, Rating.create(item_params)
  end

  def destroy
    respond_with Rating.destroy(params[:id])
  end

  def update
    item = Rating.find(params["id"])
    item.update_attributes(item_params)
    respond_with item, json: item
  end

  private

  def rating_params
    params.require(:rating).permit(:id, :rating, :review)
  end
end
