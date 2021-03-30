require 'docking_station'

describe DockingStation do
  it 'releases bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'gets bike' do
    expect(DockingStation.new.release_bike).to be_instance_of(Bike)
  end

  it 'docks bike' do
    expect(DockingStation.new).to respond_to(:dock_bike) 
  end
end