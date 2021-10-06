---
title: m_hideKeyboard
created: '2021-10-05T21:19:07.397Z'
modified: '2021-10-05T21:23:29.543Z'
---

# m_hideKeyboard 

Method for dismissing the keyboard when anything but the field or keyboard is touched. Keyboard Manager Pod handles this but here's how to do without it.

```swift 
func hideKeyboardWhenTappedAround() {
      let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
      tap.cancelsTouchesInView = false
      view.addGestureRecognizer(tap)
    }
    
@objc func dismissKeyboard() {
      view.endEditing(true)
    }
```
