require 'customer'

RSpec.describe Customer do

  describe '#security_code?' do

    context 'when code is valid' do
      //Arrange
      let(:security_code) { '1020secret' }
      subject(:customer) { described_class.new({ security_code: security_code })}

      //Act
      it 'should return true' do
        //Asser
        expect(customer.security_code.end_with?('secret')).to eq(true)
      end
    end

    context 'when code is invalid' do
      //Arrange
      let(:security_code) { '1020segredo' }
      subject(:customer) { described_class.new({ security_code: security_code })}
      //Act
      it 'should return false' do
        //Assert
        expect(expect(customer.security_code.end_with?('secret')).to eq(false))
      end
    end

  end

end