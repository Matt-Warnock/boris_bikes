# frozen_string_literal: true

require 'bike'

RSpec.describe Bike do
    it 'reponse to release working? method' do
        bike = described_class.new

        expect(bike).to respond_to(:working?)
      end

      it 'returns true' do
        bike = described_class.new
        
        expect(bike.working?).to eq true
      end
end
