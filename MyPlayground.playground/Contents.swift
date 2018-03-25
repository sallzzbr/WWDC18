//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

var recipes = [String]()
var ingredient = String()

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
        
        func teste(){
            if(ingredient == "lemon"){
                recipes.append("lemon")
            }
            
            if(ingredient == "milk"){
                recipes.append("milk")
            }
            
            print(recipes)
            
            if recipes.contains("lemon"){
                print("oi")
                view.backgroundColor = .black
            }
            if recipes.contains("lemon") && recipes.contains("milk"){
                print("oi")
                view.backgroundColor = .red
            }
        }
        ingredient = "lemon"
        teste()
        ingredient = "milk"
        teste()
        
        //#-editable-code
        //#-hidden-code
        
        //#-end-hidden-code
        //#-end-editable-code
        
        print(recipes)
        
        if recipes.contains("lemon"){
            print("oi")
            view.backgroundColor = .black
        }
        if recipes.contains("lemon") && recipes.contains("milk"){
            print("oi")
            view.backgroundColor = .red
        }
    }
 
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
