class Offer < ActiveRecord::Base
  validates_presence_of :date, :name, :offer, :price, :phone



  def self.zp_for_mounth
    Offer.all.inject({}) do |hash, offer|
      date = offer.date.strftime('%Y %m')
      date = Date.strptime(date, '%Y %m')
      hash[date] ||= 0
      hash[date] += offer.price || 0
      hash
    end
  end

  self.per_page = 30
end
