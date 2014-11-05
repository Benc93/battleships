require 'ship'

describe Ship do 
  context 'A ship should...' do 

    let(:ship)  {Ship.new}
 
    it 'have a length' do 
      ship.length!(3)
      expect(ship).to have_length
    end 

    it 'should know its own length' do 
      expect(ship.length!(3)).to eq 3
    end

    it 'be able to be hit' do 
      ship.hit!
      expect(ship).to be_hit
    end

    it 'NOT be hit on initialization' do 
      expect(ship.hit?).to be false
    end

    it 'be able to be sunk' do
      ship.sink!
      expect(ship).to be_sunk
    end

    it 'NOT be sunk on initialization' do 
      expect(ship.sunk?).to be false
    end

    it 'should have a name' do
      expect(ship.name('submarine')).to eq 'submarine'
    end


    
  end
end

