# Flutter TextField Properties Guide

This is a quick reference guide for commonly used **TextField properties** in Flutter, along with their type, description, and example/use case.

---

## 1️⃣ TextField Properties

| Property               | Type                     | Description                                  | Example / Use Case                                      |
|------------------------|-------------------------|----------------------------------------------|--------------------------------------------------------|
| `controller`           | `TextEditingController` | Field ka value read/write karne ke liye      | `controller: myController`                             |
| `decoration`           | `InputDecoration`       | Field styling, label, hint, border          | `decoration: InputDecoration(labelText: "Name", border: OutlineInputBorder())` |
| `keyboardType`         | `TextInputType`         | Keyboard type set karne ke liye             | `keyboardType: TextInputType.emailAddress`            |
| `textInputAction`      | `TextInputAction`       | Keyboard ke action button ko set karne ke liye | `textInputAction: TextInputAction.next`           |
| `obscureText`          | `bool`                  | Password hide karne ke liye                 | `obscureText: true`                                    |
| `autofocus`            | `bool`                  | Field automatically focus kare              | `autofocus: true`                                      |
| `readOnly`             | `bool`                  | Field read-only banata hai                  | `readOnly: true`                                       |
| `enabled`              | `bool`                  | Field enable/disable karta hai              | `enabled: false`                                       |
| `maxLength`            | `int`                   | Maximum characters allowed                  | `maxLength: 10`                                        |
| `maxLines`             | `int`                   | Field multi-line input ke liye              | `maxLines: 5`                                         |
| `style`                | `TextStyle`             | Text ka custom style                        | `style: TextStyle(color: Colors.red, fontSize: 16)`   |
| `textAlign`            | `TextAlign`             | Text horizontal alignment                   | `textAlign: TextAlign.center`                          |
| `textAlignVertical`    | `TextAlignVertical`     | Text vertical alignment                     | `textAlignVertical: TextAlignVertical.center`         |
| `onChanged`            | `Function(String)`      | Value change hone pe callback               | `onChanged: (val){ print(val); }`                     |
| `onSubmitted`          | `Function(String)`      | Keyboard submit press hone pe callback      | `onSubmitted: (val){ print("Submitted $val"); }`      |
| `cursorColor`          | `Color`                 | Cursor ka color set kare                     | `cursorColor: Colors.blue`                             |
| `cursorHeight`         | `double`                | Cursor ki height set kare                    | `cursorHeight: 20`                                     |
| `obscuringCharacter`   | `String`                | Password field ka custom character          | `obscuringCharacter: "*"`                              |

---

## ✅ Common Use Cases

- Quick input fields (e.g., **Username**, **Search box**, **Email**)
- Password input fields (**obscureText**)
- Multi-line notes or comments (**maxLines**)
- Instant feedback on input changes (**onChanged**)
- Keyboard action handling (**onSubmitted**)
- Custom styled text input fields (**style, decoration**)

---

> **Tip:** Use `TextFormField` inside a `Form` if you need validation or form submission logic.  
> `TextField` is best for simple inputs without validation.
