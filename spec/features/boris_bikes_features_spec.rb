require 'docking_station'

feature 'enable public to access working bikes' do
	scenario 'working bike from docking station' do
		docking_station = DockingStation.new
		docking_station.dock Bike.new  
		bike = docking_station.release_bike
		expect(bike.working?).to eq true
	end	

	scenario 'docking station does not release a bike when there are none available' do
		docking_station = DockingStation.new
		expect{ docking_station.release_bike }.to raise_error 'No bikes available'
	end
end