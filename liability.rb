class Liability
	attr_accessor :employee, :refund_due, :taxes_owed

	def initialize(employee,refund_due,taxes_owed)
		@employee = employee
		@refund_due = refund_due
		@taxes_owed = taxes_owed
	end

end