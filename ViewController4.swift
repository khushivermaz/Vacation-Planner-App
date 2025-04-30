//
//  ViewController4.swift
//  VP
//
//  Created by Student on 19/04/25.
//

import UIKit

class ViewController4: UIViewController {

    
    
    @IBOutlet weak var imagee4: UIImageView!
    
    @IBOutlet weak var emailTextField: UITextField!
   

    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

    @IBAction func `continue`(_ sender: Any) {

        guard let email = emailTextField.text, !email.isEmpty else {
                    showAlert(message: "Please enter an email address.")
                    return
                }
                
        guard let username = username.text, !username.isEmpty else {
                    showAlert(message: "Please enter a username.")
                    return
                }
                
        guard let password = password.text, !password.isEmpty else {
                    showAlert(message: "Please enter a password.")
                    return
                }
                
        // Validate the email format (simple validation)
        if !isValidEmail(email) {
            showAlert(message: "Please enter a valid email address.")
            return
        }
        
        // Validate password length (optional check)
        if password.count < 6 {
            showAlert(message: "Password should be at least 6 characters long.")
            return
        }
        
        // If all validations pass, show a success message or navigate to next screen
        showAlert(message: "Sign-up successful!") {
            // You can transition to the next screen after successful sign-up
            // Example: self.performSegue(withIdentifier: "goToHomeScreen", sender: self)
            print("Sign-up successful!, Please select next")
        }
    }
    // Helper method to show alerts
     func showAlert(message: String, completion: (() -> Void)? = nil) {
         let alertController = UIAlertController(title: "Sign Up", message: message, preferredStyle: .alert)
         let okAction = UIAlertAction(title: "OK", style: .default) { _ in
             completion?() // Call completion handler after alert dismissal
         }
         alertController.addAction(okAction)
         present(alertController, animated: true, completion: nil)
     }
     
     // Helper method to validate email format
     func isValidEmail(_ email: String) -> Bool {
         // Simple regex for validating email format
         let emailRegEx = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
         let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
         return emailTest.evaluate(with: email)
     }
 }
        
        
        
    
    
    
    
 
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


