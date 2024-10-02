//
//  ViewController.swift
//  Login
//
//  Created by Wesley Keetch on 9/16/24.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var forgotPasswordButton: UIButton!

  @IBOutlet weak var forgotUsernameButton: UIButton!
  
  @IBOutlet weak var userNameTextField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    guard let sender = sender as? UIButton else { return }

    if sender == forgotPasswordButton {
      segue.destination.navigationItem.title = "Forgot Password"
    } else if sender == forgotUsernameButton {
      segue.destination.navigationItem.title = "Forgot Username"
    } else {
      segue.destination.navigationItem.title = userNameTextField.text
    }
  }
  @IBAction func forgotUsernameAction(_ sender: Any) {
    performSegue(withIdentifier: "loginToLanding", sender: sender)
  }
  @IBAction func forgotPasswordAction(_ sender: Any) {
    performSegue(withIdentifier: "loginToLanding", sender: sender)
  }
}
