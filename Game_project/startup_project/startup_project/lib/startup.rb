require "employee"

class Startup
    attr_reader :name, :funding, :salaries, :employees
    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end
    def valid_title?(str)
        if @salaries.include?(str)
            return true
        else
            return false
        end
    end
    def >(str)
        if self.funding > str.funding
            return true
        else
            return false
        end
    end        
    def hire(employee_name, title)
        if valid_title?(title)
            employee = Employee.new(employee_name, title)
            @employees << employee
        elsif !valid_title(title)
            raise "Error"
            return
        end
    end
    def size
        return employees.length
    end
    def pay_employee(employee)
        #if @employees.include?(employee)
        #end
        salary = @salaries[employee.title]
        if @funding >= salary
            employee.pay(salary)
            @funding -= salary
        else
            raise "error"
            return 
        end
    end
    def payday
        @employees.each do |char|
            pay_employee(char)
        end
    end
    def average_salary
        sum = 0
        num = @employees.length
        @employees.each do |char|
            sum += @salaries[char.title]
        end
        average = sum / num
        return average
    end
    def close
        @employees = []
        @funding = 0
    end
    def acquire(startup)
        @funding += startup.funding
        startup.salaries.each do |name, title|
            if !@salaries.include?(name)
                @salaries[name] = title
            end
        end
        startup.employees.each do |char|
            @employees << char
        end
        startup.close
    end
end
startup_1 = Startup.new("Marklace", 45000, {"CTO"=>3000, "CEO"=>10000, "Software Engineer"=>2500, "Driver"=>1000, "Security"=> 500})
startup_1.hire("Peter", "CTO")
startup_1.hire("Perl", "Software Engieer")
startup_1.hire("Merlin", "CEO")
startup_1.hire("Friday", "Driver")
startup_1.hire("Matheew", "Security")
p startup_1.employees
