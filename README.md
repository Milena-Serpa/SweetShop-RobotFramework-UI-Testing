# SweetShop - UI Automation Tests with Robot Framework

---

## Project Overview

This repository features a User Interface (UI) test automation project developed with **Robot Framework** for the **SweetShop** e-commerce demo website. The goal is to demonstrate the application of a keyword-driven approach to create readable and easily maintainable tests, simulating user interactions.

## Skills Demonstrated

* **Quality Assurance (QA) Engineering:** Translating requirements into detailed User Stories, Business Rules, and Acceptance Criteria.
* **Test Automation:** Creating UI test suites using Robot Framework and SeleniumLibrary.
* **Keyword-Driven Development:** Organizing tests using reusable keywords for clarity and maintainability.
* **Python:** Understanding of Python (even if implicit through Robot Framework and SeleniumLibrary extensions).
* **Version Control:** Code management with Git and GitHub.

## Project Structure

* `tests/`: Robot Framework test files (`.robot`).
* `resources/`: Robot Framework resource files (reusable keywords and variables).
* `documentation/`:
    * `UserStories_SweetShop.md`: User Stories, Business Rules, and Acceptance Criteria.
    * `TestCases_SweetShop.md`: Detailed Test Cases.
* `README.md`: This file.

## Requirements

* Python (LTS recommended)
* pip (Python package manager)
* Browser driver (e.g., ChromeDriver for Chrome) configured in your system's PATH.

## How to Run the Tests

Follow the steps below to clone the repository and run the tests:

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/YourUsername/SweetShop-RobotFramework-UI-Testing.git](https://github.com/YourUsername/SweetShop-RobotFramework-UI-Testing.git)
    cd SweetShop-RobotFramework-UI-Testing
    ```
2.  **Create and activate a virtual environment (recommended):**
    ```bash
    python -m venv venv
    # On Windows:
    .\venv\Scripts\activate
    # On macOS/Linux:
    source venv/bin/activate
    ```
3.  **Install dependencies:**
    ```bash
    pip install -r requirements.txt
    ```
    (Create a `requirements.txt` file with `robotframework` and `robotframework-seleniumlibrary`).
4.  **Execute the tests:**
    ```bash
    robot tests/
    ```
    Execution reports (`log.html`, `report.html`) will be generated in the project's root folder.

## Covered Test Scenarios (Examples)

* **Navigation:**
    * Accessing the home page.
    * Navigating between product categories.
* **Product Functionalities:**
    * Viewing product details.
    * Adding products to the cart.
    * Updating cart quantity.
    * Removing items from the cart.
* **Checkout (Basic):**
    * Initiating the checkout process.
    * Filling in shipping/payment information.

## Contribution

Feel free to explore the code, suggest improvements, or report issues.
