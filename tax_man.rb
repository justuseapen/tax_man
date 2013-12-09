#main should display information outputted
require 'pry'
require 'csv'
require_relative 'employee'
require_relative 'tax_calculator'
employees = []
CSV.foreach('data.csv',headers: true) do |row|
	employee = Employee.new({first_name:row["first_name"],last_name:row["last_name"],income:row["annual_income"],tax_paid:row["tax_paid"],tax_rate:row['tax_rate']})
	employees << employee
end

employees.each do |e|
	liability = TaxCalculator.liability(e)
	if liability.refund_due > 0
		puts "#{e.first_name} #{e.last_name} will receive a refund of $#{liability.refund_due.round}."
	else
		puts "#{e.first_name+" "+e.last_name} has a tax liability of $#{liability.taxes_owed.round}."
	end
end