require 'rails_helper'

RSpec.describe MerchantService do
  describe 'class methods' do
    it 'returns a list/data about all merchants' do
      all_merchant_data = MerchantService.request_all_merchants
      all_merchants = all_merchant_data[:data] 
      expect(all_merchant_data).to be_a(Hash)
      expect(all_merchants).to be_a(Array)
      all_merchants.each do |merchant|
        expect(merchant[:type]).to eq("merchant")
        expect(merchant[:id].to_i).to be_a(Integer)
        expect(merchant[:attributes]).to have_key(:name)
      end
    end

    it 'returns info about a single merchant' do

    end
  end
end