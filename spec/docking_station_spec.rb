require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'gets bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it { is_expected.to respond_to(:bike)}

 it 'check dock_bike(bike) returns bike)' do
   bike = Bike.new
   expect(subject.dock_bike(bike)).to eq(bike)
 end

 it 'should dock the bikes' do
  bike = Bike.new
  subject.dock_bike(bike)
  expect(subject.bike).to eq(bike)
 end

 it 'should raise an error if the docking station is empty' do
  expect{ subject.release_bike }.to raise_error('No bike currently available')
 end

#  it 'gets bike' do
#   expect(subject.bike)
#  end
end