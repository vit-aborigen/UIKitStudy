//
//  ViewController.swift
//  HW_1
//
//  Created by VITALI KAZLOU on 12/15/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var GreetingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GreetingsLabel.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showAlert(title: "Please enter your name", message: "", style: .alert)
    }

    func showAlert(title: String, message: String, style: UIAlertController.Style) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            let userName = alert.textFields?.first?.text ?? ""
            self.GreetingsLabel.text = "Hi, " + userName
        })
        
        alert.addAction(action)
        alert.addTextField()
        present(alert, animated: true)
    }
}
