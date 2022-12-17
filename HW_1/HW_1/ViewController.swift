//
//  ViewController.swift
//  HW_1
//
//  Created by VITALI KAZLOU on 12/15/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var GreetingsLabel: UILabel!
    @IBOutlet weak var summLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GreetingsLabel.text = ""
        summLabel.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showAlert(title: "Please enter your name", message: "", style: .alert)
    }

    @IBAction func doSomeMath(_ sender: Any) {
        let mathAlert = UIAlertController(title: "Add numbers", message: "Please specify your values", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add", style: .default, handler: { action in
            let value1 = mathAlert.textFields?.first?.text ?? ""
            let value2 = mathAlert.textFields?.last?.text ?? ""
            self.summLabel.text = value1 + value2
            self.summLabel.isHidden = false
        })
        
        mathAlert.addAction(action)
        mathAlert.addTextField()
        mathAlert.addTextField()
        
        self.present(mathAlert, animated: true)
    }
    
    @IBAction func guessTheNumberStart(_ sender: Any) {
        print("Guess")
    }
    
    func showAlert(title: String, message: String, style: UIAlertController.Style) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "OK", style: .default, handler: { _ in
            let userName = alert.textFields?.first?.text ?? ""
            self.GreetingsLabel.text = "Hi, " + userName
            
        })
        
        alert.addAction(action)
        alert.addTextField()
        present(alert, animated: true)
    }
}
