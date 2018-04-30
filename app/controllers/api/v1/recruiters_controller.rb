class Api::V1::RecruitersController < Api::V1::BaseController
  def index
    respond_with Recruiter.all
  end

  def create
    respond_with :api, :v1, Recruiter.create(item_params)
  end

  def destroy
    respond_with Recruiter.destroy(params[:id])
  end

  def update
    item = Recruiter.find(params["id"])
    item.update_attributes(item_params)
    respond_with item, json: item
  end

  private

  def recruiter_params
    params.require(:recruiter).permit(:id, :company_name)
  end
end
