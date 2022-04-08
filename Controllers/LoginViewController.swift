//
//  LoginViewController.swift
//  VisualNovel
//
//  Created by user218932 on 3/29/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var nextSlide = SlideStatus.storySlide
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackroundTouch()
    }
    
    @IBAction func saveSettings(_ sender: Any) {
        Settings.setSlideStatus(slideStatus: SlideStatus.logInSlide)
        
        print(Settings.getUserName())
        let newViewController = storyBoard.instantiateViewController(withIdentifier: nextSlide)
        newViewController.modalPresentationStyle = .fullScreen
        Settings.setSlideStatus(slideStatus: nextSlide)
        self.present(newViewController, animated: false, completion: nil)
    }
    
    @IBAction func saveName(_ sender: UITextField) {
        if let userName = sender.text{
            Settings.setUserName(userName: userName)
            print(userName)
        }
    }
    
    private func setupBackroundTouch(){
        backgroundImageView.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(backroudTap))
        backgroundImageView.addGestureRecognizer(tapGesture)
    }
    
    @objc func backroudTap(){
        dismissKey()
    }
    
    private func dismissKey(){
        self.view.endEditing(false)
    }
}
