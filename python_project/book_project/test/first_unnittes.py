import unittest
from first_test import formatted
"""Importing a function for unittest"""

class NamesTestCase(unittest.TestCase):
    """Test for first_test.py"""

    def test_first_last_name(self):
        """Do names like 'Chika Mark' work?"""
        full_name = formatted('chika', 'mark')
        self.assertEqual(full_name, 'Chika Mark')
    
    def test_middle_name(self):
        middle_name = formatted('moses', 'peter', 'bryan')
        self.assertEqual(middle_name, 'Moses Bryan Peter')

if __name__ == '__main__':
    unittest.main()