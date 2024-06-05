from employee import Employee
import unittest
"""Testing the employee class"""


class EmployeeTest(unittest.TestCase):
    """A test for employee class"""

    def test_give_default_raise(self):
        worker = Employee("Mark", "Faith", 4000)
        salary = worker.give_raise()
        self.assertEqual(9000, salary)
    
    def test_give_give_custom_raise(self):
        staff = Employee("Chika", "Ndukwe", 6000)
        salary = staff.give_raise(8000)
        self.assertEqual(14000, salary)


if __name__=="__main__":
    unittest.main()