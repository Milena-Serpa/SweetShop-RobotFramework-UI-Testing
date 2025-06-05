# User Stories for SweetShop E-commerce

This document outlines the user stories, business rules, and acceptance criteria for the SweetShop e-commerce demo website, focusing on the functionalities covered by UI automation tests.

---

## 1. Navigation

### User Story: Access Home Page
**As a user,** I want to access the SweetShop home page, **so that** I can start Browse products.

**Business Rules:**
* The home page must load without errors.
* The main navigation elements (e.g., categories, search bar) should be visible.

**Acceptance Criteria:**
* **Given** I am on the SweetShop website
* **When** I navigate to the base URL
* **Then** I should see the SweetShop logo and main navigation menu.
* **And** the page title should be "SweetShop".

---

### User Story: Navigate Between Product Categories
**As a user,** I want to navigate between different product categories, **so that** I can easily find specific types of sweets.

**Business Rules:**
* Each category link must lead to its respective product listing page.
* The active category should be highlighted.

**Acceptance Criteria:**
* **Given** I am on the home page
* **When** I click on the "Chocolates" category link
* **Then** I should be redirected to the "Chocolates" product listing page.
* **And** the URL should reflect the "Chocolates" category.
* **When** I click on the "Candies" category link
* **Then** I should be redirected to the "Candies" product listing page.
* **And** the URL should reflect the "Candies" category.

---

## 2. Product Functionalities

### User Story: View Product Details
**As a user,** I want to view detailed information about a product, **so that** I can make an informed purchasing decision.

**Business Rules:**
* Product details page must display product image, name, description, and price.
* An "Add to Cart" button should be available.

**Acceptance Criteria:**
* **Given** I am on a product listing page (e.g., "Chocolates")
* **When** I click on a specific product (e.g., "Dark Chocolate Bar")
* **Then** I should be taken to the product details page for "Dark Chocolate Bar".
* **And** I should see the product's image, name, description, and price.
* **And** I should see an "Add to Cart" button.

---

### User Story: Add Products to the Cart
**As a user,** I want to add products to my shopping cart, **so that** I can purchase them later.

**Business Rules:**
* Only available products can be added to the cart.
* Adding a product should update the cart icon/summary.

**Acceptance Criteria:**
* **Given** I am on a product details page
* **When** I click the "Add to Cart" button
* **Then** the product should be added to the cart successfully.
* **And** the cart quantity indicator should increase by one.
* **And** I should see a confirmation message (if applicable).

---

### User Story: Update Cart Quantity
**As a user,** I want to adjust the quantity of items in my cart, **so that** I can buy more or fewer of a specific product.

**Business Rules:**
* Quantity can be increased or decreased.
* Quantity cannot be less than 1.
* Updating quantity should update the subtotal in the cart.

**Acceptance Criteria:**
* **Given** I have a product in my cart
* **When** I increase the quantity of that product in the cart
* **Then** the quantity displayed for that product should update.
* **And** the total price in the cart should reflect the new quantity.
* **When** I decrease the quantity of that product in the cart
* **Then** the quantity displayed for that product should update.
* **And** the total price in the cart should reflect the new quantity.

---

### User Story: Remove Items from the Cart
**As a user,** I want to remove items from my shopping cart, **so that** I can revise my order.

**Business Rules:**
* Removing an item should update the cart total and item count.
* If all items are removed, the cart should be empty.

**Acceptance Criteria:**
* **Given** I have at least one product in my cart
* **When** I click the "Remove" button next to a product in the cart
* **Then** the product should be removed from the cart.
* **And** the cart quantity indicator should decrease.
* **And** the cart total should be updated.
* **Given** I have only one product in my cart
* **When** I remove that product
* **Then** the cart should appear empty.

---

## 3. Checkout (Basic)

### User Story: Initiate Checkout Process
**As a user,** I want to initiate the checkout process, **so that** I can finalize my purchase.

**Business Rules:**
* Checkout should only be accessible if there are items in the cart.
* Clicking "Checkout" should take me to the first step of the checkout flow.

**Acceptance Criteria:**
* **Given** I have products in my cart
* **When** I click the "Checkout" button in the cart summary
* **Then** I should be redirected to the first step of the checkout page (e.g., shipping information).
* **And** the cart should remain visible or a summary of items should be shown.

---

### User Story: Fill in Shipping/Payment Information (Simplified)
**As a user,** I want to provide my shipping and payment information, **so that** my order can be processed.

**Business Rules:**
* All mandatory fields must be filled for successful submission.
* Valid formats should be enforced for fields like email and credit card numbers (though specific validation rules are simplified for this demo).

**Acceptance Criteria:**
* **Given** I am on the shipping information step of the checkout
* **When** I fill in all required shipping details (e.g., name, address, city, zip, email)
* **And** I proceed to the next step
* **Then** I should be taken to the payment information step.
* **Given** I am on the payment information step of the checkout
* **When** I fill in all required payment details (e.g., card number, expiry, CVV)
* **And** I proceed to the final review/confirmation step
* **Then** I should see a summary of my order and payment details.
