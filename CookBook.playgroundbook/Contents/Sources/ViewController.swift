import UIKit
import PlaygroundSupport

extension Array where Element: Comparable {
    func containsSameElements(as other: [Element]) -> Bool {
        return self.count == other.count && self.sorted() == other.sorted()
    }
}

public class ViewController: UIViewController {
    public var ingredients: [String]!
    public var howTo: String!
    
    let lemonMousse = ["lemon", "sugar", "salt", "cream", "egg"]
    
    let applePie = ["flour", "apple", "sugar", "butter", "salt"]
    
    let brazilianCarrotCake = ["carrot", "eggs", "sugar", "flour", "baking powder", "salt", "butter"]
    
    let cheeseCake = ["crackers", "vanilla", "butter", "cream cheese", "sugar", "eggs"]
    
    let friedEgg = ["oil", "egg"]
    
    override public func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = howTo
        label.textColor = .black
        label.alpha = 0
        
        //fried egg image
        let friedEggPng = "friedEgg.png"
        let friedEggImage = UIImage(named: friedEggPng)
        let friedEggView = UIImageView(image: friedEggImage!)
        friedEggView.alpha = 0
        friedEggView.frame = CGRect(x: view.frame.midX, y: view.frame.midY, width: 224, height: 200)
        view.addSubview(friedEggView)
        
        view.addSubview(label)
        self.view = view
        
        func cooking(){
            if ingredients.containsSameElements(as: friedEgg) && howTo == "pan"{
                view.backgroundColor = .yellow
                label.textColor = .black
                label.text = "Fried egg!"
                
                UIView.animate(withDuration: 3) {
                    friedEggView.alpha = 1
                }
            }
            
            if ingredients.containsSameElements(as: lemonMousse) && howTo == "mix"{
                label.text = "Lemon Mousse"
                view.backgroundColor = .red
            }
            
            if ingredients.containsSameElements(as: applePie) && howTo == "bake"{
                label.text = "Apple pie"
                view.backgroundColor = .blue
            }
            
            if ingredients.containsSameElements(as: brazilianCarrotCake) && howTo == "bake"{
                view.backgroundColor = .black
                label.textColor = .white
                label.text = "Best carrot cake in the world!"
            }
            
            if ingredients.containsSameElements(as: cheeseCake) && howTo == "bake"{
                view.backgroundColor = .white
                label.textColor = .black
                label.text = "Cheese cake"
            }
            
        }
        
        cooking()
        
    }
    
}
