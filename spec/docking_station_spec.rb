require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'gets bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it { is_expected.to respond_to(:bikes)}

 it 'check dock_bike(bike) returns bike' do
   bike = Bike.new
   expect{subject.dock_bike(bike)}.not_to raise_error
 end

 it 'should dock the bikes' do
  bike = Bike.new
  subject.dock_bike(bike)
  expect(subject.bikes[-1]).to eq(bike)
 end

 it 'should raise an error if the docking station is empty' do
  expect{ subject.release_bike }.to raise_error('No bike currently available')
 end

 it 'should raise an error if the docking is full' do
  bike = Bike.new
  20.times { subject.dock_bike(bike) }
  expect{ subject.dock_bike(bike) }.to raise_error('Docking Station is full')
 end
end