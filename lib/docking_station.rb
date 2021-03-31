class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

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
     @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
   @bikes.empty?
  end
end