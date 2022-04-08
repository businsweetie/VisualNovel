//
//  EndViewController.swift
//  VisualNovel
//
//  Created by user218932 on 4/3/22.
//

import UIKit

class EndViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Settings.setSlideStatus(slideStatus: SlideStatus.startSlide)
        Settings.setSlideId(slideId: 0)
        Settings.setUserName(userName: "")

    }
    
    @IBAction func restartGame(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "startVC")
        newViewController.modalPresentationStyle = .fullScreen
        present(newViewController, animated: false, completion: nil)
    }
    
}
