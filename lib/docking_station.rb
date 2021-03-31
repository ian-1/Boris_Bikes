class DockingStation
  attr_reader :bikes
  
  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bike currently available' if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise 'Docking Station is full' if @bikes.length >= 20
    @bikes.push(bike)
  end
end