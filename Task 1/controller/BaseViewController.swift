//
//  BaseViewController.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 24/11/22.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func appDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func sceneDelegate() -> SceneDelegate {
        return ((UIApplication.shared.connectedScenes.first!.delegate as? SceneDelegate)!)
    }

}
