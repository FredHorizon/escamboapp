class Site::HomeController < ApplicationController
  layout "site" # busca o site no layout da views

  def index
    @categories = Category.all
  end
end
