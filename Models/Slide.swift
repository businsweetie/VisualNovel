import Foundation
import UIKit

enum SlideStatus{
    static let startSlide = "startVC"
    static let logInSlide = "logInVC"
    static let storySlide = "storyVC"
    static let endSlide = "endVC"
    
//    static let startSlide = 0
//    static let logInSlide = 1
//    static let storySlide = 2
//    static let endSlide = 11
}

struct BtnInfo{
    let btnText:String
    let nextSlide:Int
    let isHidden:Bool
}

struct SlideInfo{
    let slideId: Int
    let slideText:String
    let firstBtn: BtnInfo
    let secondBtn: BtnInfo
    let thirdBtn: BtnInfo
    let slideImg: UIImage?
}

let thirdSlide = SlideInfo(
    slideId: 0,
    slideText: "",
    firstBtn: BtnInfo(
        btnText: "Пойдем на пробежку",
        nextSlide: 1,
        isHidden: false),
    secondBtn: BtnInfo(
        btnText: "Пойдем в поход",
        nextSlide: 2,
        isHidden: false),
    thirdBtn: BtnInfo(
        btnText: "Погуляем по полю",
        nextSlide: 3,
        isHidden: false),
    slideImg: UIImage(named: "loginImage")
)

let fourthSlide = SlideInfo(
    slideId: 1,
    slideText: "Может, пойдем домой?..",
    firstBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    secondBtn: BtnInfo(
        btnText: "Да, и посмотрим фильм",
        nextSlide: 4,
        isHidden: false),
    thirdBtn: BtnInfo(
        btnText: "Да, и отпразднуем хэллоуин",
        nextSlide: 5,
        isHidden: false),
    slideImg: UIImage(named: "forthScene")
)

let fifthSlide = SlideInfo(
    slideId: 2,
    slideText: "Как уютно... Но уже темнеет.",
    firstBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    secondBtn: BtnInfo(
        btnText: "Пойдем домой и посмотрим фильм",
        nextSlide: 4,
        isHidden: false),
    thirdBtn: BtnInfo(
        btnText: "Пойдем домой и отпразднуем Хэллоуин",
        nextSlide: 5,
        isHidden: false),
    slideImg: UIImage(named: "fifthScene")
)

let sixthSlide = SlideInfo(
    slideId: 3,
    slideText: "Тебе грустно... Пойдем домой?",
    firstBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    secondBtn: BtnInfo(
        btnText: "Может, посмотрим фильм?",
        nextSlide: 4,
        isHidden: false),
    thirdBtn: BtnInfo(
        btnText: "Да, отпразднуем Хэллоуин",
        nextSlide: 5,
        isHidden: false),
    slideImg: UIImage(named: "sixthScene")
)

let seventhSlide = SlideInfo(
    slideId: 4,
    slideText: "Как тебе фильм?",
    firstBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    secondBtn: BtnInfo(
        btnText: "Мне понравился!",
        nextSlide: 6,
        isHidden: false),
    thirdBtn: BtnInfo(
        btnText: "Не очень...",
        nextSlide: 7,
        isHidden: false),
    slideImg: UIImage(named: "seventhScene")
)

let eghthSlide = SlideInfo(
    slideId: 5,
    slideText: "Получается очень красиво!",
    firstBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    secondBtn: BtnInfo(
        btnText: "Да! Может, посмотрим фильм?",
        nextSlide: 4,
        isHidden: false),
    thirdBtn: BtnInfo(
        btnText: "Да! Давай сделаем костюмы!",
        nextSlide: 8,
        isHidden: false),
    slideImg: UIImage(named: "eighthScene")
)

let ninthSlide = SlideInfo(
    slideId: 6,
    slideText: "Отлично! А теперь пора спать...",
    firstBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    secondBtn: BtnInfo(
        btnText: "Да, уже поздно...",
        nextSlide: -11,
        isHidden: false),
    thirdBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    slideImg: UIImage(named: "seventhScene")
)

let tenthSlide = SlideInfo(
    slideId: 7,
    slideText: "Жаль... Тогда пойдем спать?",
    firstBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    secondBtn: BtnInfo(
        btnText: "Да, уже поздно...",
        nextSlide: -11,
        isHidden: false),
    thirdBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    slideImg: UIImage(named: "seventhScene")
)

let eleventhSlide = SlideInfo(
    slideId: 8,
    slideText: "Мне нравится твой костюм.",
    firstBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    secondBtn: BtnInfo(
        btnText: "Твой тоже очень красивый!",
        nextSlide: 9,
        isHidden: false),
    thirdBtn: BtnInfo(
        btnText: "А мне, если честно, не нравится твой...",
        nextSlide: 10,
        isHidden: false),
    slideImg: UIImage(named: "eleventhScene")
)

let twelfthSlide = SlideInfo(
    slideId: 9,
    slideText: "Спасибо! Ну, пойдем спать?",
    firstBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    secondBtn: BtnInfo(
        btnText: "Да, уже поздно...",
        nextSlide: -11,
        isHidden: false),
    thirdBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    slideImg: UIImage(named: "eleventhScene")
)

let thirteenthSlide = SlideInfo(
    slideId: 10,
    slideText: "Ничего, я не в обиде. Пойдем спать?",
    firstBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    secondBtn: BtnInfo(
        btnText: "Да, уже поздно...",
        nextSlide: -11,
        isHidden: false),
    thirdBtn: BtnInfo(
        btnText: "",
        nextSlide: -11,
        isHidden: true),
    slideImg: UIImage(named: "eleventhScene")
)

//let sceneHello = SlideInfo(
//    slideId: 0,
//    slideText: "",
//    firstBtn: BtnInfo(
//        btnText: "Пойдем на пробежку",
//        isHidden: true,
//        nextSlide: 3),
//    secondBtn: BtnInfo(
//        btnText: "Пойдем в поход",
//        isHidden: true,
//        nextSlide: 1),
//    thirdBtn: BtnInfo(
//        btnText: "Погуляем по полю",
//        isHidden: true,
//        nextSlide: 2),
//    slideImg: UIImage(named: "loginImage")
//)
//
//
//let sceneCamp = SlideInfo(
//    slideId: 1,
//    slideText: "Как уютно... Но уже темнеет.",
//    firstBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    secondBtn: BtnInfo(
//        btnText: "Пойдем домой и посмотрим фильм",
//        isHidden: true,
//        nextSlide: 4),
//    thirdBtn: BtnInfo(
//        btnText: "Пойдем домой и отпразднуем Хэллоуин",
//        isHidden: true,
//        nextSlide: 5),
//    slideImg: UIImage(named: "fifthScene")
//)
//
//let sceneField = SlideInfo(
//    slideId: 2,
//    slideText: "Тебе грустно... Пойдем домой?",
//    firstBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    secondBtn: BtnInfo(
//        btnText: "Пойдем домой и посмотрим фильм",
//        isHidden: true,
//        nextSlide: 4),
//    thirdBtn: BtnInfo(
//        btnText: "Пойдем домой и отпразднуем Хэллоуин",
//        isHidden: true,
//        nextSlide: 5),
//    slideImg: UIImage(named: "sixthScene")
//)
//
//let sceneRun = SlideInfo(
//    slideId: 3,
//    slideText: "Может, пойдем домой?..",
//    firstBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    secondBtn: BtnInfo(
//        btnText: "Пойдем домой и посмотрим фильм",
//        isHidden: true,
//        nextSlide: 4),
//    thirdBtn: BtnInfo(
//        btnText: "Пойдем домой и отпразднуем Хэллоуин",
//        isHidden: true,
//        nextSlide: 5),
//    slideImg: UIImage(named: "forthScene")
//)
//
//let sceneFilm = SlideInfo(
//    slideId: 4,
//    slideText: "Как тебе фильм?",
//    firstBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    secondBtn: BtnInfo(
//        btnText: "Мне понравился!",
//        isHidden: true,
//        nextSlide: 9),
//    thirdBtn: BtnInfo(
//        btnText: "Не очень...",
//        isHidden: true,
//        nextSlide: 10),
//    slideImg: UIImage(named: "seventhScene")
//)
//
//let sceneHellowinStart = SlideInfo(
//    slideId: 5,
//    slideText: "Получается очень красиво!",
//    firstBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    secondBtn: BtnInfo(
//        btnText: "Да! Может, посмотрим фильм?",
//        isHidden: true,
//        nextSlide: 4),
//    thirdBtn: BtnInfo(
//        btnText: "Да! Давай сделаем костюмы!",
//        isHidden: true,
//        nextSlide: 6),
//    slideImg: UIImage(named: "eleventhScene")
//)
//
//let sceneHellowinSuit = SlideInfo(
//    slideId: 6,
//    slideText: "Мне нравится твой костюм.",
//    firstBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    secondBtn: BtnInfo(
//        btnText: "Твой тоже очень красивый!",
//        isHidden: true,
//        nextSlide: 7),
//    thirdBtn: BtnInfo(
//        btnText: "А мне, если честно, не нравится твой...",
//        isHidden: true,
//        nextSlide: 8),
//    slideImg: UIImage(named: "eleventhScene")
//)
//
//let sceneHellowinSuitLike = SlideInfo(
//    slideId: 7,
//    slideText: "Спасибо! Ну, пойдем спать?",
//    firstBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    secondBtn: BtnInfo(
//        btnText: "Да, уже поздно...",
//        isHidden: true,
//        nextSlide: -11),
//    thirdBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    slideImg: nil
//)
//
//let sceneHellowinSuitNotLike = SlideInfo(
//    slideId: 8,
//    slideText: "Ничего, я не в обиде. Пойдем спать?",
//    firstBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    secondBtn: BtnInfo(
//        btnText: "Да, уже поздно...",
//        isHidden: true,
//        nextSlide: -11),
//    thirdBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    slideImg: nil
//)
//
//let sceneFilmLike = SlideInfo(
//    slideId: 9,
//    slideText: "Отлично! А теперь пора спать...",
//    firstBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    secondBtn: BtnInfo(
//        btnText: "Да, уже поздно...",
//        isHidden: true,
//        nextSlide: -11),
//    thirdBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    slideImg: nil
//)
//
//let sceneFilmNotLike = SlideInfo(
//    slideId: 10,
//    slideText: "Жаль... Тогда пойдем спать?",
//    firstBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    secondBtn: BtnInfo(
//        btnText: "Да, уже поздно...",
//        isHidden: true,
//        nextSlide: -11),
//    thirdBtn: BtnInfo(
//        btnText: "",
//        isHidden: false,
//        nextSlide: -1),
//    slideImg: nil
//)



