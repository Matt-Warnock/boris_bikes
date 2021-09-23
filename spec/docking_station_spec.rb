# frozen_string_literal: true

require 'docking_station'

RSpec.describe DockingStation do
  it 'reponse to release bike method' do
    docking_station = DockingStation.new

    expect(docking_station).to respond_to(:release_bike)
  end

  it 'will respond to dock' do
    expect(DockingStation.new).to respond_to(:dock).with(1).argument
  end

  it 'expects bike to be working' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike

    result = bike.working?

    expect(result).to eq true
  end

  describe '#release_bike' do
    it 'releases working bike' do

      bike = subject.release_bike

      expect(bike).to be_working
    end
  end

  describe '#dock' do
    it 'stores bike in the instance' do
      bike = Bike.new
      docking_station = DockingStation.new

      docking_station.dock(bike)

      expect(docking_station.bike).to eq(bike)
    end
  end
end
