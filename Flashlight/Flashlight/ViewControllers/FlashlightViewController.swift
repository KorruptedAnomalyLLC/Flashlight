//
//  FlashlightViewController.swift
//  Flashlight
//
//  Created by Austin West on 6/10/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import UIKit
import AVFoundation

class FlashlightViewController: UIViewController {
    
    @IBOutlet weak var flashlightToggleButton: UIButton!
    
    var isOn: Bool = false
    // let turnOn: String = "Turn On"
    // let turnOff: String = "Turn Off"
    override var preferredStatusBarStyle : UIStatusBarStyle {
        if isOn == false {
            return .lightContent
        } else {
            return .default
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //    Swipe right to toggle light
    @IBAction func userHasSwipedRight(_ sender: UISwipeGestureRecognizer) {
        
        if isOn == false {
            isOn = true
            self.view.backgroundColor = UIColor.white
            self.flashlightToggleButton.setTitle("Turn Off", for: .normal)
            flashlightToggleButton.setTitleColor(.black, for: .normal)
            toggleTorch(on: true)
        } else {
            isOn = false
            self.view.backgroundColor = UIColor.black
            self.flashlightToggleButton.setTitle("Turn On", for: .normal)
            flashlightToggleButton.setTitleColor(.white, for: .normal)
            toggleTorch(on: false)
        }
        self.setNeedsStatusBarAppearanceUpdate()
        
        print("View was swiped right")
    }
    
    //    swipe left to toggle light
    @IBAction func userHasSwipedLeft(_ sender: UISwipeGestureRecognizer) {
        if isOn == false {
            isOn = true
            self.view.backgroundColor = UIColor.white
            self.flashlightToggleButton.setTitle("Turn Off", for: .normal)
            flashlightToggleButton.setTitleColor(.black, for: .normal)
            toggleTorch(on: true)
        } else {
            isOn = false
            self.view.backgroundColor = UIColor.black
            self.flashlightToggleButton.setTitle("Turn On", for: .normal)
            flashlightToggleButton.setTitleColor(.white, for: .normal)
            toggleTorch(on: false)
        }
        self.setNeedsStatusBarAppearanceUpdate()
        
        print("View was swiped left")
    }
    
    //    swipe up to toggle light
    @IBAction func userHasSwipedUp(_ sender: UISwipeGestureRecognizer) {
        if isOn == false {
            isOn = true
            self.view.backgroundColor = UIColor.white
            self.flashlightToggleButton.setTitle("Turn Off", for: .normal)
            flashlightToggleButton.setTitleColor(.black, for: .normal)
            toggleTorch(on: true)
        } else {
            isOn = false
            self.view.backgroundColor = UIColor.black
            self.flashlightToggleButton.setTitle("Turn On", for: .normal)
            flashlightToggleButton.setTitleColor(.white, for: .normal)
            toggleTorch(on: false)
        }
        self.setNeedsStatusBarAppearanceUpdate()
        
        print("View was swiped up")
    }
    
    // swipe down to toggle light
    @IBAction func userHasSwipedDown(_ sender: UISwipeGestureRecognizer) {
        if isOn == false {
            isOn = true
            self.view.backgroundColor = UIColor.white
            self.flashlightToggleButton.setTitle("Turn Off", for: .normal)
            flashlightToggleButton.setTitleColor(.black, for: .normal)
            toggleTorch(on: true)
        } else {
            isOn = false
            self.view.backgroundColor = UIColor.black
            self.flashlightToggleButton.setTitle("Turn On", for: .normal)
            flashlightToggleButton.setTitleColor(.white, for: .normal)
            toggleTorch(on: false)
        }
        self.setNeedsStatusBarAppearanceUpdate()
        
        print("View was swiped down")
    }
    
    
    /* @IBAction func flashlightToggleButtonTapped(_ sender: Any) {
     
     if isOn == false {
     isOn = true
     self.view.backgroundColor = UIColor.white
     self.flashlightToggleButton.setTitle("Turn Off", for: .normal)
     flashlightToggleButton.setTitleColor(.black, for: .normal)
     toggleTorch(on: true)
     } else {
     isOn = false
     self.view.backgroundColor = UIColor.black
     self.flashlightToggleButton.setTitle("Turn On", for: .normal)
     flashlightToggleButton.setTitleColor(.white, for: .normal)
     toggleTorch(on: false)
     }
     self.setNeedsStatusBarAppearanceUpdate()
     } */
    
    func toggleTorch(on: Bool) {
        guard let device = AVCaptureDevice.default(for: .video) else { return }
        
        if device.hasTorch {
            do {
                try device.lockForConfiguration()
                
                if on == true {
                    device.torchMode = .on
                } else {
                    device.torchMode = .off
                }
                
                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }
}
