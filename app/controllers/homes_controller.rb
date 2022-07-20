class HomesController < ApplicationController
  def index
    @photos = current_user.present? ? current_user.photos.size : nil
  end
end
