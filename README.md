# 🛒 Acme Basket – Ruby Code Test

This is a simple data modeling exercise for **Acme Widget Co**, implemented in Ruby.

The task was to implement a basket system with delivery pricing rules and special offers, with a clean, maintainable structure. The solution supports:

- A configurable product catalogue
- Delivery charges based on basket value
- Promotional offers (e.g. buy-one-get-one-half-price)
- A simple `add` method and a `total` method
- Test examples as provided in the assignment

---

## ✅ Requirements

- Ruby 2.7+
- No external dependencies

---

## 📦 Product Catalogue

| Code | Product       | Price   |
|------|---------------|---------|
| R01  | Red Widget    | $32.95  |
| G01  | Green Widget  | $24.95  |
| B01  | Blue Widget   | $7.95   |

---

## 🚚 Delivery Rules

| Basket Total     | Delivery Cost |
|------------------|---------------|
| < $50            | $4.95         |
| $50 - $89.99     | $2.95         |
| $90 or more      | Free          |

---

## 🎁 Special Offers

- **Buy One Red Widget, Get the Second Half Price**

---

## 🧪 Example Baskets

| Items                          | Expected Total |
|--------------------------------|----------------|
| B01, G01                       | $37.85         |
| R01, R01                       | $54.37         |
| R01, G01                       | $60.85         |
| B01, B01, R01, R01, R01        | $98.27         |

---

## 🚀 Usage

### 1. Clone the repo

```bash
git clone https://github.com/yourusername/acme-basket.git
cd acme-basket
