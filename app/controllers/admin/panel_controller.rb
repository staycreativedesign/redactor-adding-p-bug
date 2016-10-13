class Admin::PanelController < ApplicationController
  layout "admin_area"
  before_action :require_admin

  def index
  end

  private

  def require_admin
    if current_user.admin?
    else
      redirect_to login_path
    end
  end

end
