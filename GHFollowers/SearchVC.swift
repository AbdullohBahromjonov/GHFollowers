//
//  SearchVC.swift
//  GHFollowers
//
//  Created by Abdulloh on 28/01/24.
//

import UIKit

class SearchVC: UIViewController {
    let logoImageView = UIImageView()
    let usernameTextField = GFTextField()
    let getUserButton = GFButton(backgroundColor: .systemGreen, title: "Get Followers")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        configureLogoImageView()
        configureTextField()
        configureGetFollowrsButton()
        createDismissKeyboardGesture()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func createDismissKeyboardGesture() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        
        view.addGestureRecognizer(tap)
    }
    
    
    func configureLogoImageView() {
        view.addSubview(logoImageView)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")
        
        NSLayoutConstraint.activate(
            [
                logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
                logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                logoImageView.heightAnchor.constraint(equalToConstant: 200),
                logoImageView.widthAnchor.constraint(equalToConstant: 200)
            ]
        )
    }
    
    
    func configureTextField() {
        view.addSubview(usernameTextField)
        
        NSLayoutConstraint.activate(
            [
                usernameTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
                usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
                usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
                usernameTextField.heightAnchor.constraint(equalToConstant: 50)
            ]
        )
    }
    
    
    func configureGetFollowrsButton() {
        view.addSubview(getUserButton)
        
        NSLayoutConstraint.activate(
            [
                getUserButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
                getUserButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
                getUserButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
                getUserButton.heightAnchor.constraint(equalToConstant: 50)
            ]
        )
    }
}

extension SearchVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        <#code#>
    }
}
