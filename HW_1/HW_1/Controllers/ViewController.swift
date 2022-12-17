//
//  ViewController.swift
//  HW_1
//
//  Created by VITALI KAZLOU on 12/15/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var greetingsLabel: UILabel!
    @IBOutlet var summLabel: UILabel!
    @IBOutlet var guessLabel: UILabel!
    var secretNumber = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateNumber()
        greetingsLabel.isHidden = true
        summLabel.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showAlert(title: "Please enter your name", message: "", style: .alert)
    }

    @IBAction func doSomeMath(_ sender: Any) {
        let mathAlert = UIAlertController(title: "Add numbers", message: "Please specify your values", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add", style: .default, handler: { _ in
            let value1 = mathAlert.textFields?.first?.text ?? ""
            let value2 = mathAlert.textFields?.last?.text ?? ""
            self.summLabel.text = value1 + value2
            self.summLabel.isHidden = false
        })
        
        mathAlert.addAction(action)
        mathAlert.addTextField()
        mathAlert.addTextField()
        
        present(mathAlert, animated: true)
    }
    
    @IBAction func guessTheNumberStart(_ sender: Any) {
        let guessAlert = UIAlertController(title: "Guess game", message: "Please enter number from 1 to 10", preferredStyle: .alert)
        let action = UIAlertAction(title: "Try!", style: .default) { action in
            guard let userInput = Int(guessAlert.textFields?.first?.text ?? "0") else {
                self.guessLabel.text = "Value should be an Integer"
                self.guessLabel.sizeToFit()
                return
            }
            
            if userInput == self.secretNumber {
                self.guessLabel.text = "Correct. Try to get a new number"
                self.generateNumber()
            } else if userInput < self.secretNumber {
                self.guessLabel.text = "Bigger"
            } else {
                self.guessLabel.text = "Lesser"
            }
        }
        
        guessAlert.addTextField()
        guessAlert.addAction(action)
        self.present(guessAlert, animated: true)
    }
    
    func showAlert(title: String, message: String, style: UIAlertController.Style) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "OK", style: .default, handler: { _ in
            let userName = alert.textFields?.first?.text ?? ""
            self.greetingsLabel.text = "Hi, " + userName
            self.greetingsLabel.isHidden = false
            
        })
        
        alert.addAction(action)
        alert.addTextField()
        present(alert, animated: true)
    }
    
    func generateNumber() {
        self.secretNumber = Int.random(in: 1...9)
    }
}
