class Admin::BusinessController < Admin::PanelController
  def index
  end

  def edit
    @business = Business.find(params[:id])
  end

  def update
    @business = Business.find(params[:id])
    @business.update(business_params)
    redirect_to edit_admin_business_path(@business)
    flash[:success] = 'Business updated'
  end

  def business_params
    params.require(:business).permit(:google_maps_longitude, :google_maps_latitude, :logo, :name, :address, :city, :state, :zipcode, :email, :number, :google_maps)
  end

end

