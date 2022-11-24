//
//  LoginViewController.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 24/11/22.
//

import UIKit

class LoginViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    // MARK: - Mehtods
    
    func callRegister() {
        let vc = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
    // MARK: - Actions
    
    @IBAction func onSignInClick(_ sender: Any) {
        sceneDelegate().callHome()
    }
    
    @IBAction func onSignUpClick(_ sender: Any) {
        callRegister()
    }
    

}
