//
//  ViewController7.swift
//  VP
//
//  Created by Student on 28/04/25.
//

import UIKit

class ViewController7: UIViewController {

    
    @IBOutlet weak var warmClothingLabel: UILabel!
    @IBOutlet weak var hikingBootsLabel: UILabel!
    @IBOutlet weak var sunscreenLabel: UILabel!
    @IBOutlet weak var cameraLabel: UILabel!
    @IBOutlet weak var backpackLabel: UILabel!
    
    
    
    @IBOutlet weak var warmClothingSwitch: UISwitch!
    @IBOutlet weak var hikingBootsSwitch: UISwitch!
    @IBOutlet weak var sunscreenSwitch: UISwitch!
    @IBOutlet weak var cameraSwitch: UISwitch!
    @IBOutlet weak var backpackSwitch: UISwitch!
    
    var essentialsState = [String: Bool]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize the essentials state
           essentialsState = ["Warm Clothing": false, "Hiking Boots": false, "Sunscreen": false, "Camera": false, "Backpack": false]
           
           // Set initial switch states
           updateSwitchState()
        // Do any additional setup after loading the view.
    }
    func updateSwitchState() {
            // Set switch states for each item
            warmClothingSwitch.isOn = essentialsState["Warm Clothing"] ?? false
            hikingBootsSwitch.isOn = essentialsState["Hiking Boots"] ?? false
            sunscreenSwitch.isOn = essentialsState["Sunscreen"] ?? false
            cameraSwitch.isOn = essentialsState["Camera"] ?? false
            backpackSwitch.isOn = essentialsState["Backpack"] ?? false
        }
        
    
    @IBAction func switchToggled(_ sender: Any) {
        // Cast sender to UISwitch
        if let switchControl = sender as? UISwitch {
            if switchControl == warmClothingSwitch {
                essentialsState["Warm Clothing"] = switchControl.isOn
            } else if switchControl == hikingBootsSwitch {
                essentialsState["Hiking Boots"] = switchControl.isOn
            } else if switchControl == sunscreenSwitch {
                essentialsState["Sunscreen"] = switchControl.isOn
            } else if switchControl == cameraSwitch {
                essentialsState["Camera"] = switchControl.isOn
            } else if switchControl == backpackSwitch {
                essentialsState["Backpack"] = switchControl.isOn
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
