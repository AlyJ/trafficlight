//
//  ViewController.swift
//  trafficlight
//
//  Created by alina.jarmolica on 24/08/2020.
//  Copyright © 2020 alina.jarmolica. All rights reserved.
//

import UIKit

enum CurrentLight {
    case pink, yellow, green
}
class ViewController: UIViewController {
    @IBOutlet weak var redlight: UIView!
    @IBOutlet weak var yellowlight: UIView!
    @IBOutlet weak var greenlight: UIView!
    @IBOutlet weak var startbutton: UIButton!
    private var currentLight = CurrentLight.pink
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    override func viewDidLoad() {
        super.viewDidLoad()
        redlight.alpha = lightIsOff
        yellowlight.alpha = lightIsOff
        greenlight.alpha = lightIsOff
    }
    override func viewWillLayoutSubviews() {
        redlight.layer.cornerRadius = redlight.frame.width / 2
        yellowlight.layer.cornerRadius = yellowlight.frame.width / 2
        greenlight.layer.cornerRadius = greenlight.frame.width / 2
    }
    @IBAction func startButtonPress(_ sender: Any) {
        
        startbutton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .pink:
            greenlight.alpha = lightIsOff
            redlight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redlight.alpha = lightIsOff
            yellowlight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenlight.alpha = lightIsOn
            yellowlight.alpha = lightIsOff
            currentLight = .pink
        
        }
    }
    
}

