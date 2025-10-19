import pytest
import time
from selenium.common import NoSuchElementException, ElementNotInteractableException
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium import webdriver
from selenium.webdriver.support.relative_locator import locate_with


@pytest.fixture
def driver():
    driver = webdriver.Chrome()
    yield driver
    driver.quit()

def test_locator_by_name(driver):
    driver.get('https://i-learn-robotframework-webserver.vercel.app/login3.html')
    email_locator = locate_with(By.TAG_NAME, "label").above({By.ID: "email"})
    assert driver.find_element(email_locator).text == "Email hoặc Tên đăng nhập"


