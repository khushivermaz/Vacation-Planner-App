//
//  ViewController5.swift
//  VP
//
//  Created by Student on 19/04/25.
//

import UIKit

class ViewController5: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var destinationTextField: UITextField!
    @IBOutlet weak var costTextField: UITextField!
    
    
    // List of mountain destinations
        let mountainDestinations = ["Manali", "Munnar", "Gulmarg", "Shimla", "Leh"]
        
        // Corresponding costs for each destination
        let destinationCosts = ["Manali": 10000, "Munnar": 12000, "Gulmarg": 15000, "Shimla": 8000, "Leh": 18000]
        
        var selectedDestination = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Make the cost text field non-editable
                costTextField.isUserInteractionEnabled = false

                // Create and set up the picker view
                let pickerView = UIPickerView()
                pickerView.delegate = self
                pickerView.dataSource = self
                
                // Set the picker view as the input view for the destination text field
                destinationTextField.inputView = pickerView
                
                // Add a toolbar with a "Done" button to dismiss the picker view
                let toolbar = UIToolbar()
                toolbar.sizeToFit()
                let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(dismissPicker))
                toolbar.setItems([doneButton], animated: false)
                destinationTextField.inputAccessoryView = toolbar
            }
    
    // MARK: - UIPickerView Data Source
     func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
     }

     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return mountainDestinations.count
     }

     // MARK: - UIPickerView Delegate
     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return mountainDestinations[row]
     }

     func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         selectedDestination = mountainDestinations[row]
         destinationTextField.text = selectedDestination
         
         // Update the cost field with the corresponding cost
         if let cost = destinationCosts[selectedDestination] {
             costTextField.text = "₹\(cost)"
         }
     }
    @objc func dismissPicker() {
           destinationTextField.resignFirstResponder()
       }

       
        
        
        
        // MARK: - UIPickerView Delegate
        
        
        
        
        
        
        @IBAction func `continue`(_ sender: Any) {
            //
            guard !selectedDestination.isEmpty else {
                        showAlert(message: "Please select a destination.")
                        return
                    }

                    // ✅ HIGHLIGHTED: This line must match the Storyboard segue identifier
                    performSegue(withIdentifier: "goToBookingPage", sender: self)
                }

                // ✅ HIGHLIGHTED: Helper to show alert if no destination selected
                func showAlert(message: String) {
                    let alert = UIAlertController(title: "Oops!", message: message, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default))
                    present(alert, animated: true)
                }

                // ✅ HIGHLIGHTED: Pass data to BookingViewController before transition
                override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                    if segue.identifier == "goToBookingPage" {
                        if let destinationVC = segue.destination as? BookingViewController {
                            destinationVC.selectedPlace = selectedDestination
                            destinationVC.totalCost = destinationCosts[selectedDestination] ?? 0
                        }
                    }
            
            
            
        }
        
        //}
        //    }
    
    
    
    
    
    // Do any additional setup after loading the view.
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}
