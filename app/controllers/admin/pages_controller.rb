class Admin::PagesController < Admin::PanelController
  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to admin_pages_path
      flash[:success] = 'Page has been created'
    else
      render :new
      flash[:danger] = 'There was an error'
    end
  end

  def edit
    find_page
  end

  def update
    find_page
    if @page.update(page_params)
      redirect_to admin_pages_path
      flash[:success] = "Page updated"
    else
      binding.pry
    end
  end

  def show
    find_page
  end

  private

  def find_page
    @page = Page.friendly.find(params[:id])
  end

  def page_params
    params.require(:page).permit!
  end

end
