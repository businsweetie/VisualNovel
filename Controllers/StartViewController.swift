//
//  StartViewController.swift
//  VisualNovel
//
//  Created by user218932 on 4/2/22.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var startBtn: UIButton!
    //var nextSlide = "logInVC"
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    //var nextSlide = Settings.getSlideId() == (SlideStatus.startSlide | SlideStatus.logInSlide) ? "logInVC" : "storyVC"
    var nextSlide = SlideStatus.logInSlide

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Settings.setSlideId(slideId: 0)
//        Settings.setUserName(userName: "")
//        print(Settings.getSlideId())
        
//        if nextSlide == "storyVC"{
//            startBtn?.setTitle("Продолжить игру", for: .normal)
//        }
        
        print(Settings.getUserName())
        print(Settings.getSlideStatus())
        print(Settings.getSlideId())
        
        let savedSlide = Settings.getSlideStatus()
        if savedSlide != SlideStatus.startSlide{
            nextSlide = savedSlide
            startBtn?.setTitle("Продолжить", for: .normal)
        }
    }
    
    @IBAction func startGame(_ sender: UIButton) {
        
        let newViewController = storyBoard.instantiateViewController(withIdentifier: nextSlide) //as UIViewController
        newViewController.modalPresentationStyle = .fullScreen
        Settings.setSlideStatus(slideStatus: nextSlide)
        present(newViewController, animated: false, completion: nil)
    }

}
