# frozen_string_literal: true

require 'docking_station'

RSpec.describe DockingStation do
  it 'reponse to release bike method' do
    docking_station = DockingStation.new

    expect(docking_station).to respond_to(:release_bike)
  end

  describe '#release_bike' do
    it 'releases working bike' do

      bike = subject.release_bike

      expect(bike).to be_working
    end
  end
end
