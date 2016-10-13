class Admin::SubcategoriesController < Admin::PanelController
  def index
    find_page
    @subcategories = @page.subcategories
  end
  def new
    find_page
    @subcategory = @page.subcategories.new
  end

  def create
    find_page
    @subcategory = @page.subcategories.build(subcategory_params)
    if @subcategory.save
      redirect_to admin_page_subcategories_path(@page)
      flash[:success] = 'Subcategory has been created'
    else
      render :new
      flash[:success] = 'There was an error'
    end
  end

  def edit
    find_page
    find_subcategory
  end

  def update
    find_page
    find_subcategory
    if @subcategory.update(subcategory_params)
      redirect_to admin_page_subcategories_path(@page)
      flash[:success] = "Subcategory updated"
    else
    end
  end

  def show
    find_page
    find_subcategory
  end

  def destroy
    find_page
    find_subcategory
    @subcategory.destroy
    redirect_to admin_page_subcategories_path(@page)
    flash[:danger] = "Subcategory deleted"
  end

  private


  def find_page
    @page = Page.friendly.find(params[:page_id])
  end

  def find_subcategory
    @subcategory = @page.subcategories.friendly.find(params[:id])
  end

  def subcategory_params
    params.require(:subcategory).permit!
  end

end
