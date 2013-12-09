require_relative 'tax_calculator'
require_relative 'employee'

describe TaxCalculator do


	it "returns taxes owed" do
		 employee = Employee.new(first_name: "Jack",last_name:"Johnson",income: 100000,tax_paid: 30000,tax_rate: 38)
		expect(TaxCalculator.liability(employee)).to eql(8000.0)
	end

	it "returns refund due" do
		employee = Employee.new(first_name: "Jack",last_name:"Johnson",income: 100000,tax_paid: 40000,tax_rate: 38)
		expect(TaxCalculator.liability(employee)).to eql(2000.0)
	end	
end