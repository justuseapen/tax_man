
class Employee
	attr_accessor :first_name, :last_name, :income, :tax_paid, :tax_rate, :tax_percentage
	def initialize(attributes={})
		@first_name = attributes[:first_name] || "Missing"
		@last_name = attributes[:last_name] || "Missing"
		@income = attributes[:income] || 0
		@tax_paid = attributes[:tax_paid] || 0
		@tax_rate = attributes[:tax_rate] || 0
		@tax_percentage = @tax_rate.to_i / 100.to_f
	end
end

Employee.new(first_name: "Eric", tax_paid: 123123)