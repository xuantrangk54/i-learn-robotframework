# libs/my_utils.py
class MyUtils:
    """Custom utilities for Robot Framework"""

    def say_hello(self, name: str):
        """Say hello to someone"""
        print(f"Hello, {name}!")

    def multiply(self, a: int, b: int):
        """Multiply two numbers and return result"""
        return int(a) * int(b)