//
//  ViewController2.swift
//  VP
//
//  Created by Student on 18/04/25.
//

import UIKit

class ViewController2: UIViewController {

    
    
    @IBOutlet weak var image2: UIImageView!
    
    
    
    @IBOutlet weak var username: UITextField!
    
    
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func `continue`(_ sender: Any) {
    
    
        guard let username = username.text, !username.isEmpty else {
            showAlert(message: "Please enter a username.")
            return
        }

        guard let password = password.text, !password.isEmpty else {
            showAlert(message: "Please enter a password.")
            return
        }

        // Basic login validation (you can replace this with real authentication logic)
        if username == "khushi" && password == "123456" {
            // Show a success message or transition to another screen
            showAlert(message: "Login successful!, please select next")
            
            self.performSegue(withIdentifier: "goToNextScreen", sender: self)


        } else {
            // Show an error message if login fails
            showAlert(message: "Invalid username or password.")
        }
    }
    

    func showAlert(message: String, completion: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: "Login", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?() // **New Code**: Call completion handler after the alert is dismissed
        }
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNextScreen" {
            print("Performing segue to next screen.")
        }
    }
}
        
        
//    }
    


    /*
     
 
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


