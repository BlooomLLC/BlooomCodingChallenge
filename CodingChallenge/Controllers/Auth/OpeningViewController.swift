//
//  OpeningViewController.swift
//  CodingChallenge
//
//

import UIKit

class OpeningViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /// Enables 'slide to dismiss' for views added to stack
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
    }
    
    @IBAction func signUpPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Auth", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func logInPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Auth", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}

/*
 
 You can ignore this code here.
 This just enables the 'Slide Back to Dismiss' animation when you push more View Controllers onto the navigation stack
 
 */
extension OpeningViewController: UIGestureRecognizerDelegate {
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        /// Prevents 'slide to dismiss' for view on the root of stack
        if(navigationController!.viewControllers.count > 1) {
            return true
        }
        return false
    }
    
}
