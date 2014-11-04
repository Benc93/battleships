require 'water'

describe Water do 
# let(:water){Water.new}
let(:cell){double :Cell}

	context "Behaviors:" do 

		it "should able to be receive a hit" do
			water = Water.new
			water.hit
			expect(water.hit).to be true
		end

		it "should to know if it is already hit" do
			water = Water.new
			expect(water.hit?).to be false
			water.hit
			expect(water.hit?).to be true
		end
			
	end

end