feature 'enable public to access working bikes' do
	scenario 'return working bike from docking station' do
		docking_station = DockingStation.new  
		bike = docking_station.release_bike
		expect(bike.working?).to eq true
	end	
end