//
//  ViewController8.swift
//  VP
//
//  Created by Student on 28/04/25.
//

import UIKit

class ViewController8: UIViewController {

    
    @IBOutlet weak var sunscreenSwitch: UISwitch!
    @IBOutlet weak var sunscreen: UILabel!
    
    @IBOutlet weak var TowelSwitch: UISwitch!
    @IBOutlet weak var BeachTowelSwitch: UILabel!
    
    @IBOutlet weak var flipflops: UILabel!
    @IBOutlet weak var flipFlopsSwitch: UISwitch!
    
    
    
    @IBOutlet weak var Umbrella: UISwitch!
    @IBOutlet weak var umbrellaSwitch: UILabel!
    
    
    @IBOutlet weak var SUNGLASS: UISwitch!
    
    @IBOutlet weak var waterswitch: UISwitch!
    
    
    @IBOutlet weak var cameraswitch: UISwitch!
    
    @IBOutlet weak var cameraSwitch: UILabel!

    // MARK: - Essentials state dictionary
        var essentialsState = [String: Bool]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
  
        // Initialize the essentials state for beach essentials
        essentialsState = [
            "Sunscreen": false,
            "Beach Towel": false,
            "Flip Flops": false,
            "Umbrella": false,
            "Sunglasses": false,
            "Water Bottle": false,
            "Camera": false
        ]
        // Set initial switch states
                updateSwitchState()

        // Do any additional setup after loading the view.
    }
    // MARK: - Update the switch states based on essentials state
     func updateSwitchState() {
         sunscreenSwitch.isOn = essentialsState["Sunscreen"] ?? false
         TowelSwitch.isOn = essentialsState["Beach Towel"] ?? false
         flipFlopsSwitch.isOn = essentialsState["Flip Flops"] ?? false
         Umbrella.isOn = essentialsState["Umbrella"] ?? false
         SUNGLASS.isOn = essentialsState["Sunglasses"] ?? false
         waterswitch.isOn = essentialsState["Water Bottle"] ?? false
         cameraswitch.isOn = essentialsState["Camera"] ?? false
     }
    
    @IBAction func switchToggled(_ sender: Any) {
        // Cast sender to UISwitch
        if let switchControl = sender as? UISwitch {
            if switchControl == sunscreenSwitch {
                essentialsState["Sunscreen"] = switchControl.isOn
            } else if switchControl == TowelSwitch {
                essentialsState["Beach Towel"] = switchControl.isOn
            } else if switchControl == flipFlopsSwitch {
                essentialsState["Flip Flops"] = switchControl.isOn
            } else if switchControl == Umbrella{
                essentialsState["Umbrella"] = switchControl.isOn
            } else if switchControl == SUNGLASS {
                essentialsState["Sunglasses"] = switchControl.isOn
            } else if switchControl == waterswitch {
                essentialsState["Water Bottle"] = switchControl.isOn
            } else if switchControl == cameraswitch {
                essentialsState["Camera"] = switchControl.isOn
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
