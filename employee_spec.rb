require_relative 'employee'

#Calculate employee taxes and refunds 
#based on their annual income, 
#taxes already paid and their tax rate.

describe Employee do
	it "may exist without some data elements" do
		employee = Employee.new(,"Johnson",100000,30000, 38)
end