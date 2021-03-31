class DockingStation
  attr_reader :bike
  
  def release_bike
    # Bike.new
    raise 'No bike currently available' unless @bike
    @bike
  end

  def dock_bike(bike)
    raise 'Docking Station is full' if @bike
    @bike = bike
  end
end