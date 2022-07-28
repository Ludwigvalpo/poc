class HomesController < ApplicationController
  def index
    @photos = current_user.present? ? current_user.photos : nil
  end
end
