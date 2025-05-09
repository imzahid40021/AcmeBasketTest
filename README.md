# 🧠 Acme Basket – Ruby Code Test

Solution to the Acme Widget Co sales system assignment.

---

## ✅ My Approach

I broke the problem down into clean, testable components:

- **Basket**: Handles adding items, applying discounts, and calculating the total.
- **OfferRules**: A separate module that defines promotional logic (e.g., buy one red widget, get the second half price).
- **Delivery Rules**: Passed into the basket and calculated based on subtotal.
- **Product Catalogue**: Passed in during initialization to keep things flexible and decoupled.

I used Ruby hashes and lambdas to keep the configuration dynamic and easy to extend. This design allows new offers or delivery rules to be plugged in without modifying core logic.

---

## 💻 Running the Code

Make sure you have Ruby installed, then:

```bash
ruby test.rb
