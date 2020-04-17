require 'customer'

RSpec.describe Customer do

  describe '#valid_security_code?' do

    context 'when code is valid' do
      # Arrange
      let(:security_code) { '1020secret' }
      subject(:customer) { described_class.new({ security_code: security_code })}

      # Act
      it 'should return true' do
        # Assert
        expect(customer.valid_security_code?).to eq(true)
      end
    end

    context 'when code is invalid' do
      # Arrange
      let(:security_code) { '1020segredo' }
      subject(:customer) { described_class.new({ security_code: security_code })}
      # Act
      it 'should return false' do
        # Assert
        expect(expect(customer.valid_security_code?).to eq(false))
      end
    end
  end

  describe '#score' do
    context 'when customer bought an item' do
      # Arrange
      subject(:customer) { described_class.new({}) }

      # Act
      it 'sum one to the socre for each item he bought' do
        10.times { customer.buy_items(2) }

        # Assert
        expect(customer.score).to eq(20)
      end
    end
  end

end