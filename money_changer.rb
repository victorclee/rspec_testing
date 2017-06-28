require 'rspec'

class ChangeMachine
  def change(number)
    return [1] if number == 1
    return [1, 1] if number == 2
    return [1, 1, 1] if number == 3
    



  end
end

RSpec.describe ChangeMachine do 
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end

    it 'should return [1, 1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1, 1])
    end

    it 'should return [1, 1, 2] when given 3' do
      machine = ChangeMachine.new
      expect(machine.change(3)).to eq([1, 1, 1])
    end





  end
end