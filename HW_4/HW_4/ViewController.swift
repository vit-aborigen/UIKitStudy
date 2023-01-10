//
//  ViewController.swift
//  HW_4
//
//  Created by VITALI KAZLOU on 12/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    let mySwitch = UISwitch()
    let myButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mySwitch.frame = CGRect.zero
        self.mySwitch.center = self.view.center
        
        self.myButton.frame = CGRect(x: 100, y: 200, width: 100, height: 200)
        self.myButton.backgroundColor = .blue
        self.myButton.setTitle("OK", for: .normal)
        self.myButton.setTitle("Pressed", for: .highlighted)
        
        self.view.addSubview(mySwitch)
        self.view.addSubview(myButton)
        
        self.mySwitch.tintColor = .green
        self.mySwitch.thumbTintColor = .red
        self.mySwitch.onTintColor = .black
        
        self.myButton.addTarget(self, action: #selector(pressButton(target: )), for: .allTouchEvents)
    }
    
    @objc func pressButton(target: UIButton) {
        self.mySwitch.isOn = true
    }

}

