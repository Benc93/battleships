require 'player'

describe Player do
  let(:trackingboard) { double :Trackingboard }
  let(:targetboard) { double :Targetboard }
  let(:player) { Player.new(trackingboard, targetboard) }
  let(:ship) { double :Ship }

  context 'a player should...' do
    it 'should have a tracking board' do
      expect(player.trackingboard).not_to be_nil
    end

    it 'should have target board' do
      expect(player.targetboard).not_to be_nil
    end

    it 'Can place ship on targetboard' do
      expect(targetboard).to receive(:place).with(ship)
      player.place!(ship)
      # expect(player.place!).to be true
    end

    it 'Can shoot at ship on targetboard' do
      expect(targetboard).to receive(:hit).with(ship)
      player.hit!(ship)
    end
  end
end
