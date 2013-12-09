require_relative 'employee'

#Calculate employee taxes and refunds 
#based on their annual income, 
#taxes already paid and their tax rate.
#must verify that you can instantiate your
#class when all expected data is present 
#as well as handle the cases where some are missing.


describe Employee do
	it "may exist without first name" do
		Employee.new(first_name: "",last_name: "Johnson", income: 100000,tax_paid: 30000,tax_rate: 38).should respond_to :first_name
	end

	it "may exist without last name" do
		Employee.new(first_name: "John",last_name: "",income: 100000,tax_paid: 30000,tax_rate: 38).should respond_to :last_name
	end

	it "may exist without income" do
		Employee.new(first_name: "Jack",last_name: "Johnson",tax_paid: 30000,tax_rate: 38).should respond_to :income
	end

	it "may exist without tax paid" do
		Employee.new(first_name:"Jack",last_name:"Johnson",income: 100000,tax_rate: 38).should respond_to :tax_paid
	end

	it "may exist without tax rate" do
		Employee.new(first_name:"Jared",last_name:"Johnson",income: 100000,tax_paid: 30000).should respond_to :tax_rate
	end

end