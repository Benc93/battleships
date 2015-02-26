require 'cell'

describe Cell do
  let(:content) { double :Content }

  context 'A cell should' do
    it 'should contain something' do
      cell = Cell.new(:content)
      expect(cell.content).to eq :content
    end
    it 'is able to receive content' do
      cell = Cell.new(:new_stuff)
      expect(cell.content).to eq :new_stuff
    end

    it 'checks if it\'s hit or not' do
      cell = Cell.new(:content)
      expect(content).to receive(:hit)
      cell.hit!(content)
      expect(cell.hit?(:content)).to be true
    end

    it 'allows content to to be hit' do
      cell = Cell.new(content)
      expect(content).to receive(:hit)
      cell.hit!(content)
    end
  end
end
