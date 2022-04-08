//
//  StoryViewController.swift
//  VisualNovel
//
//  Created by user218932 on 4/3/22.
//

import UIKit

class StoryViewController: UIViewController {

    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var slideImg: UIImageView!
    @IBOutlet weak var firstBtn: UIButton!
    @IBOutlet weak var secondBtn: UIButton!
    @IBOutlet weak var thirdBtn: UIButton!
    
    var currentSlideId = 0
    
    let slideList = [
        thirdSlide, //0
        fourthSlide, //1
        fifthSlide, //2
        sixthSlide, //3
        seventhSlide, //4
        eghthSlide, //5
        ninthSlide, //6
        tenthSlide, //7
        eleventhSlide, //8
        twelfthSlide, //9
        thirteenthSlide //10
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userName = Settings.getUserName()
        mainText.text = "Отлично, \(userName)! Чем займемся?"
        
        Settings.setSlideStatus(slideStatus: SlideStatus.storySlide)
        currentSlideId = Settings.getSlideId()
        loadSlide(slideId: currentSlideId)
    }
    
    @IBAction func firstBtnGoToNextSlide(_ sender: UIButton) {
        loadSlide(slideId: slideList[currentSlideId].firstBtn.nextSlide)
        print(currentSlideId)
    }
    
    @IBAction func secondBtnGoToNextSlide(_ sender: UIButton) {
        let nextSlideId = slideList[currentSlideId].secondBtn.nextSlide
        
//        if (nextSlideId == 11){
//            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            let newViewController = storyBoard.instantiateViewController(withIdentifier: "finalVC")
//            newViewController.modalPresentationStyle = .fullScreen
//            present(newViewController, animated: false, completion: nil)
//        }
//        else{
//            loadSlide(slideId: nextSlideId)
//            print(currentSlideId)
//        }
        if(nextSlideId > 0){
            loadSlide(slideId: nextSlideId)
            print(currentSlideId)
            return
        }
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: SlideStatus.endSlide) as UIViewController
        nextViewController.modalPresentationStyle = .fullScreen
        self.present(nextViewController, animated: false, completion: nil)
        
    }
    
    @IBAction func thirdBtnGoToNextSlide(_ sender: UIButton) {
        loadSlide(slideId: slideList[currentSlideId].thirdBtn.nextSlide)
        print(currentSlideId)
    }
    
    func loadSlide(slideId:Int){
        Settings.setSlideId(slideId: slideId)
        
        let currentSlide = slideList[slideId]
        
        //slideText.text = slideList[slideId].slideText
        if(currentSlide.slideText.count != 0){
            mainText.text = slideList[slideId].slideText
        }
        
        firstBtn.setTitle(currentSlide.firstBtn.btnText, for: .normal)
        secondBtn.setTitle(currentSlide.secondBtn.btnText, for: .normal)
        thirdBtn.setTitle(currentSlide.thirdBtn.btnText, for: .normal)
        
//        firstBtn.isHidden = currentSlide.firstBtn.isHidden
//        secondBtn.isHidden = currentSlide.secondBtn.isHidden
//        thirdBtn.isHidden = currentSlide.thirdBtn.isHidden
        
        
        firstBtn.alpha = currentSlide.firstBtn.isHidden ? 0 : 1
        firstBtn.isEnabled = !currentSlide.firstBtn.isHidden
        
        secondBtn.alpha = currentSlide.secondBtn.isHidden ? 0 : 1
        secondBtn.isEnabled = !currentSlide.secondBtn.isHidden
        
        thirdBtn.alpha = currentSlide.thirdBtn.isHidden ? 0 : 1
        thirdBtn.isEnabled = !currentSlide.thirdBtn.isHidden
        
        if let bgImg = currentSlide.slideImg{
            slideImg.image = bgImg
        }
        
        currentSlideId = slideId
    }

}
