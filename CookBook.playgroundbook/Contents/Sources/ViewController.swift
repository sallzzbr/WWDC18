import UIKit
import PlaygroundSupport

public class ViewController: UIViewController {
    public var ingredients: [String]!
    public var howTo: String!
    
    override public func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = howTo
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
        func cooking(){
            if ingredients.contains("lemon"){
                print("oi")
                view.backgroundColor = .red
            }
            
            if ingredients.contains("milk"){
                print("oi")
                view.backgroundColor = .blue
            }
            
            if ingredients.contains("lemon") && ingredients.contains("milk"){
                view.backgroundColor = .black
                label.textColor = .white
            }
            
        }
        
        cooking()
        
    }
    
}
