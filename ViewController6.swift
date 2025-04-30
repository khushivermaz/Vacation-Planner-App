//
//  ViewController6.swift
//  VP
//
//  Created by Student on 28/04/25.
//

import UIKit

class ViewController6: UIViewController {

    
    
    @IBOutlet weak var beachDestinationTextField: UITextField!
    
    @IBOutlet weak var beachCostTextField: UITextField!
    let beachCosts = [
        "Goa": 9000,
        "Andaman": 20000,
        "Lakshadweep": 18000,
        "Gokarna": 7500,
        "Pondicherry": 8500
    ]
    
    var selectedBeach = ""
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Add real-time detection for text change
        beachDestinationTextField.addTarget(self, action: #selector(destinationChanged), for: .editingChanged)
    }
        // Do any additional setup after loading the view.
    @objc func destinationChanged() {
        if let destination = beachDestinationTextField.text {
            if let cost = beachCosts[destination] {
                beachCostTextField.text = "₹\(cost)"
                selectedBeach = destination
            } else {
                beachCostTextField.text = ""
                selectedBeach = ""
            }
        }
    }
    
    

    
        
    @IBAction func CONTINUE(_ sender: Any) {
    }
    
    @IBAction func `continue`(_ sender: Any) {
        guard !selectedBeach.isEmpty else {
                    showAlert(message: "Please enter a valid beach destination.")
                    return
                }
                performSegue(withIdentifier: "goToBeachBookingPage", sender: self)
            }

            func showAlert(message: String) {
                let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                present(alert, animated: true)
            }

            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "goToBeachBookingPage" {
                    if let destinationVC = segue.destination as? BookingViewController {
                        destinationVC.selectedPlace = selectedBeach
                        destinationVC.totalCost = beachCosts[selectedBeach] ?? 0
                    }
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

}
