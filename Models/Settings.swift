import Foundation

enum KeysUserDefaults{
    static let userNameKey = "userNameKey"
    static let slideIdKey = "slideIdKey"
    static let slideStatusKey = "slideStatusKey"
}

struct Settings{
    
    static let defaults = UserDefaults.standard
    
    static func setUserName(userName:String){
        defaults.set(userName, forKey: KeysUserDefaults.userNameKey)
    }
    
    static func getUserName() -> String{
        let userName = defaults.string(forKey: KeysUserDefaults.userNameKey)
        if userName != nil{
            return userName!
        } else {
            return ""
        }
    }
    
    static func setSlideId(slideId:Int){
        defaults.set(slideId, forKey: KeysUserDefaults.slideIdKey)
    }
    
    static func getSlideId() -> Int{
        return defaults.integer(forKey: KeysUserDefaults.slideIdKey)
    }
    
    static func setSlideStatus(slideStatus:String){
        defaults.set(slideStatus, forKey: KeysUserDefaults.slideStatusKey)
    }
    
    static func getSlideStatus() -> String{
        return defaults.string(forKey: KeysUserDefaults.slideStatusKey) ?? SlideStatus.startSlide
    }
}
