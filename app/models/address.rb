class Address < ActiveRecord::Base
  belongs_to :district

  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true, length: { is: 5 }, numericality: true

  def get_representatives
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end

  def uri
    URI('openstates.org/api/v1//legislators/?state=ma&chamber=lower&active=true&apikey=b46764ca0b5f4ea7b2b70e97fa40cb25')
  end
end
