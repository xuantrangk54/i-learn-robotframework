from selenium import webdriver
from selenium.webdriver.common.by import By

def test_eight_components():
    driver = setup()

    title = driver.title
    assert title == "Web form"

    driver.implicitly_wait(0.5)

    text_box = driver.find_element(by=By.NAME, value="my-text")
    submit_button = driver.find_element(by=By.CSS_SELECTOR, value="button")

    text_box.send_keys("Selenium")
    submit_button.click()

    message = driver.find_element(by=By.ID, value="message")
    value = message.text
    assert value == "Received!"

    teardown(driver)

def setup():
    driver = webdriver.Chrome()  # Nếu ChromeDriver không ở PATH, thêm path: webdriver.Chrome(executable_path="C:/path/chromedriver.exe")
    driver.get("https://www.selenium.dev/selenium/web/web-form.html")
    return driver

def teardown(driver):
    driver.quit()

if __name__ == "__main__":
    test_eight_components()
    print("Test completed successfully!")
