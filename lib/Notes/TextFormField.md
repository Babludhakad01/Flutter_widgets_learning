# Flutter TextFormField Properties Guide

**TextFormField** Flutter ka ek special input field hai jo **TextField ke sabhi properties support karta hai**, plus **form-specific properties** for validation and submission.

---

## 2️⃣ TextFormField Properties

| Property               | Type                        | Description                                  | Example / Use Case                                      |
|------------------------|----------------------------|----------------------------------------------|--------------------------------------------------------|
| `validator`            | `Function(String?) → String?` | Input validation function                   | `validator: (val){ if(val==null || val.isEmpty) return "Enter value"; return null; }` |
| `onSaved`              | `Function(String?)`         | Form submit hone par value save karne ke liye | `onSaved: (val){ _name = val!; }`                     |
| `initialValue`         | `String`                   | Default value field me show karne ke liye    | `initialValue: "John"`                                 |
| `autovalidateMode`     | `AutovalidateMode`         | Kab validation run kare                      | `autovalidateMode: AutovalidateMode.onUserInteraction`|
| `enableSuggestions`    | `bool`                      | Keyboard suggestions enable/disable         | `enableSuggestions: true`                               |
| `autocorrect`          | `bool`                      | Auto-correct enable/disable                  | `autocorrect: false`                                   |

---

## ⚡ Extra Notes

- `TextFormField` **hamesha `Form` ke saath use hota hai**, jaise **login** ya **signup forms**.
- `validator` ke through aap **input validation** kar sakte ho aur **FormState.validate()** call karke saare fields ek sath validate kar sakte ho.
- `onSaved` ke through aap **submit hone par values store** kar sakte ho.
- `initialValue` se aap **default text** show kara sakte ho jab user form open kare.
- `autovalidateMode` control karta hai **kab validation trigger hoga**:
    - `disabled` → manually validate only
    - `onUserInteraction` → user type karte hi validate
    - `always` → hamesha validate

---

> **Tip:** Agar aapko **real app form** banana hai with validation and submit, hamesha `TextFormField` + `Form` use kare.  
> `TextField` mostly simple input ke liye best hai, jahan validation ki zaroorat nahi hoti.
