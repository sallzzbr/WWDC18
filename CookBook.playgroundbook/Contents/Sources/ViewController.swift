import UIKit
import AVFoundation

var recipes = [String]()
var ingredient = String()
var content = Cookingtable()

public class ViewController: UIViewController {
    override public func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
//        if(ingredient == "add lemon"){
//            recipes.append("lemon")
//        }
//
//
//        if(ingredient == "add milk"){
//            recipes.append("milk")
//        }
        
        if(content.ingredient() == "lemon"){
            recipes.append("lemon")
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
    
}
