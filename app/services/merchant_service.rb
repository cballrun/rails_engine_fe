require 'faraday'

class MerchantService
  
  def self.request_all_merchants
    response = Faraday.get("http://localhost:3000/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.request_one_merchant(merchant_id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{merchant_id}")
    JSON.parse(response.body, symbolize_names: true)
  end
end