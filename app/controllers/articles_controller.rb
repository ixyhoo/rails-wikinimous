class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def index
      @articles = Article.all

    def new
      @article = Article.new
    end

    def create
      @restaurant.save
      # No need for app/views/restaurants/create.html.erb
      redirect_to restaurant_path(@restaurant)
    end

    def show
    end

    def edit
    end

    def update
    end

    def delete
    end

    # [...]

    private

    def set_
      @restaurant = Restaurant.find(params[:id])
    end
  end
end

# Rails.application.routes.draw do
#   # Read all
#   get    "restaurants",          to: "restaurants#index"
#   # Create
#   get    "restaurants/new",      to: "restaurants#new",  as: :new_restaurant
#   post   "restaurants",          to: "restaurants#create"
#   # Read one - The `show` route needs to be *after* `new` route.
#   get    "restaurants/:id",      to: "restaurants#show", as: :restaurant
#   # Update
#   get    "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
#   patch  "restaurants/:id",      to: "restaurants#update"
#   # Delete
#   delete "restaurants/:id",      to: "restaurants#destroy"
# end
