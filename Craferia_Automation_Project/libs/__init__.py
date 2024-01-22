import unittest
from selenium import webdriver
from pages.home_page import HomePage
from utils.craferia_config import CraferiaConfig

class TestWebHome(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.driver = webdriver.Chrome()
        cls.driver.get(CraferiaConfig.BASE_URL)
        cls.home_page = HomePage(cls.driver)

    def test_verify_home_module(self):
        # Your test logic for the home module goes here
        pass

    def tearDown(self):
        self.driver.quit()

if __name__ == "__main__":
    unittest.main()
