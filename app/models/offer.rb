class Offer < ActiveRecord::Base
  validates :name, presence: true
  validates :offer, presence: true
  validates :price, presence: true
  validates :phone, presence: true
  validates_presence_of :date



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
