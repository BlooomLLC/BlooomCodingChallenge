//
//  ViewController.swift
//  CodingChallenge
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var goalLabel: UILabel!
    
    let signedInLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 20
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16, weight: .black)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(signedInLabel)
        NSLayoutConstraint.activate([
            signedInLabel.leftAnchor.constraint(equalTo: goalLabel.leftAnchor),
            signedInLabel.rightAnchor.constraint(equalTo: goalLabel.rightAnchor),
            signedInLabel.topAnchor.constraint(equalTo: goalLabel.bottomAnchor, constant: 20),
        ])
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.signedInLabel.text = "User is signed in: \(CurrentUser.isSignedIn)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !CurrentUser.isSignedIn {
            let storyboard = UIStoryboard(name: "Auth", bundle: Bundle.main)
            let vc = storyboard.instantiateViewController(withIdentifier: "AuthNavigationController") as! AuthNavigationController
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        }

    }
    
    

}

