class SubcategoriesController < ApplicationController
  def show
    find_page
    find_subcategory
  end

  private

  def find_page
    @page = Page.friendly.find(params[:page_id])
  end

  def find_subcategory
    find_page
    @subcategory = @page.subcategories.friendly.find(params[:id])

  end
end
