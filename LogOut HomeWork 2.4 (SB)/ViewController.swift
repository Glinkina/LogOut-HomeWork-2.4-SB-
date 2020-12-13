//
//  ViewController.swift
//  LogOut HomeWork 2.4 (SB)
//
//  Created by Andrey Glinkin on 13.12.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var userPasswordField: UITextField!
    
    private let userName = "Earth"
    private let password = "1234"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "Log In" else { return }
    }
    
    @IBAction func forgotPass(_ sender: Any) {
        popUpWindow(title: "Ready?? 🧑🏼‍🚀", message: "The name of the planet you live on!")
    }
    @IBAction func forgotName(_ sender: Any) {
        popUpWindow(title: "Ready?? 🚀", message: "Сount from 4 to 1, vice versa!")
    }
    
    
    
    @IBAction func loginButton(_ sender: Any) {
        guard
            userNameField.text == userName && userPasswordField.text == password
        else {
            popUpWindow(title: "Unsuccessfully", message: "Username or password entered incorrectly")
            return
        }
        performSegue(withIdentifier: "correctLogin", sender: nil)
    }
    

}
extension ViewController {
    private func popUpWindow(title: String, message: String) {
        let windom = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let pushAction = UIAlertAction(title: "OK", style: .default) {_ in
        }
        windom.addAction(pushAction)
        present(windom, animated: true)
    }
}

