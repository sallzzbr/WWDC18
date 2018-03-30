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
    let butterFriedEgg = ["butter", "egg"]
    
    
    
    override public func loadView() {
        let view = UIView()
        let screenX = UIScreen.main.bounds.size.width
        let screenY = UIScreen.main.bounds.size.height
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: screenX*0.05, y: screenY*0.55, width: 400, height: 150)
        label.font = UIFont(name: "SinhalaSangamMN", size: 24)
        label.text = howTo
        label.textColor = .black
        label.alpha = 1
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        
        //fried egg image
        let friedEggPng = "friedEgg.png"
        let friedEggImage = UIImage(named: friedEggPng)
        
        func foodPictures(currentImage: UIImage, posX: CGFloat, posY: CGFloat, imageWidth: CGFloat, imageHeight: CGFloat){
            let foodImageView = UIImageView(image: currentImage)
            foodImageView.alpha = 0
            foodImageView.frame = CGRect(x: posX,y: posY, width: imageWidth, height: imageHeight)
            view.addSubview(foodImageView)
            UIView.animate(withDuration: 3) {
                foodImageView.alpha = 1
            }
        }
        
        view.addSubview(label)
        self.view = view
        
        func cooking(){
            if ingredients.containsSameElements(as: friedEgg) || ingredients.containsSameElements(as: butterFriedEgg) && howTo == "pan"{
                view.backgroundColor = .yellow
                label.textColor = .black
                label.text = "Congratulations, you've made a fried egg! Let's try more complex recipes now!"
                //IMAGE
                foodPictures(currentImage: friedEggImage!, posX: screenX*0.15, posY: screenY*0.3, imageWidth: 224, imageHeight: 200)
                //ANIMATION
                
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
