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
    driver.get('https://i-learn-robotframework-webserver.vercel.app/shadowdom.html')
    shadow_host = driver.find_element(By.CSS_SELECTOR, "user-card")
    shadow_root = shadow_host.shadow_root
    shadow_content = shadow_root.find_element(By.CSS_SELECTOR, '.card')
    assert shadow_content is not None
