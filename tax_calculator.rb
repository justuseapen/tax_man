require 'pry'
require_relative 'employee'
require_relative 'liability'

class TaxCalculator

	def self.liability(employee)
		taxes_owed = employee.income.to_i * employee.tax_percentage
		refund_due = employee.tax_paid.to_f - taxes_owed
		if refund_due > 0
			Liability.new(employee,refund_due,0)
		else
			Liability.new(employee,0,refund_due.abs)
		end
	end
end