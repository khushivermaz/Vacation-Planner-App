//
//  ViewController9.swift
//  VP
//
//  Created by Student on 28/04/25.
//

import UIKit

class ViewController9: UIViewController {

    
    @IBOutlet weak var sunscreenSwitch: UISwitch!
    

    @IBOutlet weak var sunglassesLabel: UISwitch!
    
    
    
    @IBOutlet weak var flipFlopsSwitch: UISwitch!
    
    
    @IBOutlet weak var beachTowelSwitch: UISwitch!
    
    
    @IBOutlet weak var umbrellaSwitch: UISwitch!
    
    
    var essentialsState = [String: Bool]()  // **State dictionary holding the switch state**
       
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        essentialsState = [
                   "Sunscreen": false,
                   "Beach Towel": false,
                   "Flip Flops": false,
                   "Umbrella": false,
                   "Sunglasses": false,
//                   "Water Bottle": false,
//                   "Camera": false
               ]
        // Set initial switch states
               updateSwitchState()
    }
    // MARK: - Update the switch states based on essentials state
     func updateSwitchState() {
         sunscreenSwitch.isOn = essentialsState["Sunscreen"] ?? false   // **Set switch state**
         beachTowelSwitch.isOn = essentialsState["Beach Towel"] ?? false  // **Set switch state**
         flipFlopsSwitch.isOn = essentialsState["Flip Flops"] ?? false   // **Set switch state**
         umbrellaSwitch.isOn = essentialsState["Umbrella"] ?? false    // **Set switch state**
         sunglassesLabel.isOn = essentialsState["Sunglasses"] ?? false  // **Set switch state**
//         waterBottleSwitch.isOn = essentialsState["Water Bottle"] ?? false  // **Set switch state**
//         cameraSwitch.isOn = essentialsState["Camera"] ?? false   // **Set switch state**
     }
    
    
    @IBAction func switchToggled(_ sender: Any) {
        // Cast sender to UISwitch
               if let switchControl = sender as? UISwitch {
                   if switchControl == sunscreenSwitch {    // **Switch for sunscreen**
                       essentialsState["Sunscreen"] = switchControl.isOn
                   } else if switchControl == beachTowelSwitch {    // **Switch for beach towel**
                       essentialsState["Beach Towel"] = switchControl.isOn
                   } else if switchControl == flipFlopsSwitch {    // **Switch for flip flops**
                       essentialsState["Flip Flops"] = switchControl.isOn
                   } else if switchControl == umbrellaSwitch {    // **Switch for umbrella**
                       essentialsState["Umbrella"] = switchControl.isOn
                   } else if switchControl == sunglassesLabel {    // **Switch for sunglasses**
                       essentialsState["Sunglasses"] = switchControl.isOn
//                   } /*else*/ if switchControl == waterBottleSwitch {    // **Switch for water bottle**
//                       essentialsState["Water Bottle"] = switchControl.isOn
//                   /*}*/ else if switchControl == cameraSwitch {    // **Switch for camera**
//                       essentialsState["Camera"] = switchControl.isOn
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
