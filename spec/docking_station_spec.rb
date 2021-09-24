# frozen_string_literal: true

require 'docking_station'

RSpec.describe DockingStation do
  let(:docking_station) { described_class.new }

  it 'reponse to release bike method' do
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'will respond to dock' do
    expect(docking_station).to respond_to(:dock).with(1).argument
  end

  describe '#release_bike' do
    it 'releases a bike after a bike has been docked' do
      bike = Bike.new
      
      docking_station.dock(bike)
      expect(docking_station.release_bike).to eq bike
    end

    it 'raises error message when there are no bikes' do
      expect { docking_station.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'stores bike in the instance' do
      bike = Bike.new
      docking_station.dock(bike)

      expect(docking_station.bike).to eq(bike)
    end
  end
end
