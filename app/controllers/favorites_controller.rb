class FavoritesController < ApplicationController
  belongs_to :user
  belongs_to :book
end
