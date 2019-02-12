class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_free_search_model, :get_categories

  def set_free_search_model
    if params[:q].present? && params[:q][:description_cont_any].present?
      # for search with space
      params[:q][:description_cont_any] = params[:q][:description_cont_any].split(/[\p{blank}\s]+/)
    end
    @q = Material.ransack(params[:q])
  end

  # for sidebar
  def get_categories
    @categories = Category.all
  end

end
