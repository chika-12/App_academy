import unittest
"""Importing the python unittest module"""

from city import count

"""Importing the function to test"""

class CountTest(unittest.TestCase):
    """A class for unittest"""

    def test_country_and_city(self):
        """Testing count output"""
        full_name = count("nigeria", "lagos")
        self.assertEqual(full_name, "Nigeria Lagos")
    
    def test_population(self):
        """Testing the code if population is passed to code"""
        with_population_variable = count("nigeria", "abuja", 245628)
        self.assertEqual(with_population_variable, "Nigeria Abuja 245628")

if __name__ == '__main__':
    unittest.main()