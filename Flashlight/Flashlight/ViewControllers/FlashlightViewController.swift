//
//  FlashlightViewController.swift
//  Flashlight
//
//  Created by Austin West on 6/10/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import UIKit

class FlashlightViewController: UIViewController {

    @IBOutlet weak var flashlightToggleButton: UIButton!
    
    
    var isOn: Bool = false
    let turnOn: String = "Turn On"
    let turnOff: String = "Turn Off"
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func flashlightToggleButtonTapped(_ sender: Any) {
        
        if isOn == false {
           isOn = true
            self.view.backgroundColor = UIColor.white
            self.flashlightToggleButton.setTitle("Turn Off", for: .normal)
            flashlightToggleButton.setTitleColor(.black, for: .normal)
        } else {
            if isOn == true {
            isOn = false
                self.view.backgroundColor = UIColor.black
                self.flashlightToggleButton.setTitle("Turn On", for: .normal)
                flashlightToggleButton.setTitleColor(.white, for: .normal)
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
