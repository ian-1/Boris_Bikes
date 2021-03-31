class DockingStation
  attr_reader :bikes
  
  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bike currently available' if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise 'Docking Station is full' if full?
    @bikes.push(bike)
  end

  private

  def full?
     @bikes.length >= 20
  end

  def empty?
   @bikes.empty?
  end
end