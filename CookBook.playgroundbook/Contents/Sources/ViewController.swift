import UIKit
import PlaygroundSupport

var recipes = [String]()

public class ViewController: UIViewController {
    public var ingredients: String!
    
    override public func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
        func cooking(){
            if(ingredients == "lemon"){
                recipes.append("lemon")
            }
            
            if(ingredients == "milk"){
                recipes.append("milk")
            }
            
            print(recipes)
            
            if recipes.contains("lemon"){
                print("oi")
                view.backgroundColor = .red
            }
            
            if recipes.contains("milk"){
                print("oi")
                view.backgroundColor = .blue
            }
            
            if recipes.contains("lemon") && recipes.contains("milk"){
                print("oi")
                view.backgroundColor = .black
            }
        }
        
        cooking()
        
    }
    
}
