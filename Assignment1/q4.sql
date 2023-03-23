-- Create a query to display the package number, speed, strt_date (the date when the
-- package became available), monthly payment, and monthly payment * 12, name the last
-- column “YearlyPayment” (Packages table).

select pack_id,speed,strt_date,monthly_payment,monthly_payment*12 as YearlyPayment
from package;