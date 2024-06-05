class Employee():
    """ Creates an employee class that takes in first name and last name"""

    def __init__(self, first_name, last_name, annual_salary):
        self.first_name = first_name
        self.last_name = last_name
        self.annual_salary = annual_salary
    
    def give_raise(self, increase=5000):
        self.annual_salary += increase
        return self.annual_salary

#work = Employee("chika", "mark", 3000)
#print(work.annual_salary)
#salary=work.give_raise(2000)
#print(salary)