//
//  BookingViewController.swift
//  VP
//
//  Created by Student on 28/04/25.
//

import UIKit

class BookingViewController: UIViewController {

    @IBOutlet weak var destinationLabel: UILabel!
    
    
    @IBOutlet weak var costLabel: UILabel!
    var selectedPlace: String = ""
    var totalCost: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        destinationLabel.text = "Destination: \(selectedPlace)"
        costLabel.text = "Cost: ₹\(totalCost)"
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
