class CategoriesController < ApplicationController
  before_action :find_category, only: :destroy

  def index
    @categories = Category.order(:created_at).page(params[:page]).per(5)
  end

  def destroy
    if @category.destroy
      flash[:success] = "Destroy success"
      redirect_to root_url
    end
  end

  private

  def find_category
    @category = Category.find_by_id params[:id]

    if @category.nil?
      flash[:danger] = "Category not found"
      redirect_to root_url
    end
  end
end
