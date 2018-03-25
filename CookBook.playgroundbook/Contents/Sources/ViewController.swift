import UIKit
import AVFoundation

var recipes = [String]()
var ingredient = String()

public class ViewController: UIViewController {
    public override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
        ingredient = "add lemon"
        
        if(ingredient == "add lemon"){
            recipes.append("lemon")
        }
        
        ingredient = "add milk"
        
        if(ingredient == "add milk"){
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
    
}
