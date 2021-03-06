class Customer
    attr_accessor :security_code, :score

    def initialize(params = {})
        @security_code = params.fetch(:security_code, nil)
        @score = 0
    end

    def valid_security_code?
    	self.security_code.end_with?('secret')
    end

    def buy_items(quantity)
    	@score += quantity
    end

end