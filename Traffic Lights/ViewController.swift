//
//  ViewController.swift
//  Traffic Lights
//
//  Created by Alexey Yelfimov on 20.09.2024.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    enum TrafficLightState {
        case off, red, yellow, green
    }
    
    var currentLightState: TrafficLightState = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
    }
    
  

    @IBAction func lightButtonSwitcher() {
    switch currentLightState {
        case .off:
                currentLightState = .red
                redLight.alpha = 1
                yellowLight.alpha = 0.3
                greenLight.alpha = 0.3
                startButton.setTitle("NEXT", for: .normal)
            case .red:
                currentLightState = .yellow
                redLight.alpha = 0.3
                yellowLight.alpha = 1
                greenLight.alpha = 0.3
            case .yellow:
                currentLightState = .green
                redLight.alpha = 0.3
                yellowLight.alpha = 0.3
                greenLight.alpha = 1
                startButton.setTitle("START", for: .normal)
            case .green:
                currentLightState = .red
                redLight.alpha = 1
                yellowLight.alpha = 0.3
                greenLight.alpha = 0.3
                startButton.setTitle("NEXT", for: .normal)
        }
    }
}
