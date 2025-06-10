# Test Cases for SweetShop UI Automation

This document provides detailed test cases for the SweetShop e-commerce demo website, designed for UI automation using Robot Framework. These test cases cover key functionalities outlined in the User Stories.

---

## 1. Navigation Test Cases

### TC-NAV-001: Verify Home Page Access
* **Description:** Asserts that the SweetShop home page loads correctly and displays expected elements.
* **Preconditions:** None.
* **Steps:**
    1.  Open the browser to the SweetShop base URL.
* **Expected Results:**
    * The SweetShop home page is displayed.
    * The page title is "SweetShop".
    * The SweetShop logo is visible.
    * The main navigation menu (e.g., "Sweets", "About", "Login", "Basket") is visible.

---

### TC-NAV-002: Verify Navigation to Chocolates Category
* **Description:** Confirms that clicking the "Sweets" category link redirects to the correct page.
* **Preconditions:** User is on the SweetShop home page.
* **Steps:**
    1.  Click on the "Sweets" link in the main navigation.
* **Expected Results:**
    * The browser navigates to the "Sweets" product listing page.
    * The URL contains "/sweets" or similar identifier.
    * Products categorized as "Sweets" are displayed.
    * The product's name, image, description, and price are visible.
    * An "Add to Cart" button is present.

---

## 2. Product Functionalities Test Cases

### TC-PROD-001: Add Single Product to Cart
* **Description:** Tests adding a single unit of a product to the basket.
* **Preconditions:** User is on a product category page (e.g., Sweets).
* **Steps:**
    1.  Click the "Add to Cart" button on the product.
* **Expected Results:**
    * The cart icon/indicator shows "1" item.
    * The product appears in the cart summary (if visible).

---

### TC-PROD-002: Add Multiple Products to Cart
* **Description:** Tests adding different products to the basket.
* **Preconditions:** User is on the home page.
* **Steps:**
    1.  Navigate to "Sweets" category.
    2.  Click "Add to Cart" on "Chocolate Cups".
    3.  Click "Add to Cart" on "Bon Bons".
* **Expected Results:**
    * The cart icon/indicator shows "2" items.
    * Both "Chocolate Cups" and "Bon Bons" are listed in the basket.
    * The cart total reflects the sum of prices of both products.

---

### TC-PROD-003: Update Product Quantity in Basket (Increase)
* **Description:** Verifies increasing the quantity of a product already in the basket.
* **Preconditions:** User has one unit of a product in the basket.
* **Steps:**
    1.  Navigate to "Sweets" category.
    2.  Click "Add to Cart" on "Chocolate Cups".
* **Expected Results:**
    * The basket icon/indicator shows "3" items.
    * The quantity displayed for that product updates from 1 to 2.
    * The subtotal for that product updates accordingly.
    * The overall cart total updates to reflect the new quantity.

---

### TC-PROD-004: Remove Single Product from Basket
* **Description:** Tests removing a single product from the basket.
* **Preconditions:** User has at least one product in the basket.
* **Steps:**
    1.  Add a product to the basket.
    2.  Go to the basket page/summary.
    3.  Click the "Delete Item"  button next to the product.
    4.  Confirm that you want to remove item.
* **Expected Results:**
    * The product is no longer displayed in the basket.
    * The basket quantity indicator decreases by product.
    * The basket total is updated.

---

### TC-PROD-005: Empty basket by Removing All Items
* **Description:** Verifies that removing all items results in an empty basket.
* **Preconditions:** User has multiple products in the basket.
* **Steps:**
    1.  Add two distinct products to the basket.
    2.  Go to the basket page/summary.
    3.  Remove the first product.
    4.  Remove the second product.
* **Expected Results:**
    * The basket appears empty 
    * The basket quantity indicator shows "0".

---

### TC-PROD-006: Empty basket by "Empty Basket" button
* **Description:** Verifies that removing all items results in an empty basket.
* **Preconditions:** User has multiple products in the basket.
* **Steps:**
    1.  Add two distinct products to the basket.
    2.  Go to the basket page/summary.
    3.  Click on "Empty Basket" button.
    4.  Confirm that you want to empty basket.
* **Expected Results:**
    * The basket appears empty 
    * The basket quantity indicator shows "0".

