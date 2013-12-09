require_relative 'liability'

describe Liability do

	it "returns amount of taxes owed" do
		employee = Employee.new(first_name: "Jack",last_name:"Johnson",income: 100000,tax_paid: 30000,tax_rate: 38)
	end

	it "returns size of refund due" do
		employee = Employee.new(first_name: "Jack",last_name:"Johnson",income: 100000,tax_paid: 30000,tax_rate: 38)
		
	end

end
