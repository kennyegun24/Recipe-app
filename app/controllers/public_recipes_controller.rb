# frozen_string_literal: true

class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.where(public: true).order(created_at: :desc)
  end

  def show
    @recipes = Recipe.where(public: true).order(created_at: :desc)
  end
end
