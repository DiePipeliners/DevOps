import unittest
from app.app import add,returnGreeting

class MyTestCase(unittest.TestCase):
    def test_addtest1(self):
        res = add(1,2)
        self.assertEqual(3, res)  # add assertion here

    def test_addtest2(self):
        res = add(5,4)
        self.assertEqual(9, res)  # add assertion here

    def test_Greeting(self):
        res = returnGreeting("Tomasz")
        self.assertEqual("Hallo Tomasz",res)

if __name__ == '__main__':
    unittest.main()
