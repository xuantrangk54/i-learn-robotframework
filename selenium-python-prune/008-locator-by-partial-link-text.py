import pytest
import time
from selenium.common import NoSuchElementException, ElementNotInteractableException
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium import webdriver


@pytest.fixture
def driver():
    driver = webdriver.Chrome()
    yield driver
    driver.quit()

def test_locator_by_name(driver):
    driver.get('https://i-learn-robotframework-webserver.vercel.app')
    element = driver.find_element(By.PARTIAL_LINK_TEXT, "go to dantri.com")
    assert element is not None

