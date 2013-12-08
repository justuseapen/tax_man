class Employee
	attr_accessor :first_name, :last_name, :income, :tax_paid, :tax_rate
	def initialize(first_name = "Missing",last_name = "Missing",income = 0,tax_paid = 0, tax_rate = 0)
		@first_name = first_name
		@last_name = last_name
		@income = income
		@tax_paid = tax_paid
		@tax_rate = tax_rate / 100.to_f
	end

end