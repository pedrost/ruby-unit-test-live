class Customer
    attr_accessor :security_code

    def initialize(params = {})
        @security_code = params.fetch(:security_code)
    end

end