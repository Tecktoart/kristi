class StatisticsController < ApplicationController
  def index
    @prices = Offer.zp_for_mounth
  end



end
