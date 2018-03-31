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
    
    let lemonMoussePie = ["lemon", "sugar", "salt", "cream", "egg", "crackers"]
    
    let applePie = ["flour", "apple", "sugar", "butter", "salt"]
    
    let brazilianCarrotCake = ["carrot", "eggs", "sugar", "flour", "baking powder", "salt", "butter"]
    
    let cheeseCake = ["crackers", "vanilla", "butter", "cream cheese", "sugar", "eggs"]
    let lemonCheeseCake = ["crackers", "vanilla", "butter", "cream cheese", "sugar", "eggs", "lemon"]
    let appleCheeseCake = ["crackers", "vanilla", "butter", "cream cheese", "sugar", "eggs", "apple"]
    
    let friedEgg = ["oil", "egg"]
    let butterFriedEgg = ["butter", "egg"]
    
    let omelete = ["oil", "egg", "milk"]
    let butterOmelete = ["butter", "egg", "milk"]
    
    let bread = ["milk", "flour", "butter", "sugar", "salt"]
    
    override public func loadView() {
        let view = UIView()
        let screenX = UIScreen.main.bounds.size.width
        let screenY = UIScreen.main.bounds.size.height
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: screenX*0.06, y: screenY*0.55, width: 380, height: 150)
        label.font = UIFont(name: "SinhalaSangamMN", size: 24)
        label.text = howTo
        label.textColor = .white
        label.alpha = 1
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        
        //fried egg image
        let friedEggPng = "friedEgg.png"
        let friedEggImage = UIImage(named: friedEggPng)
        
        let scrambleEggPng = "scrambledEggs.png"
        let scrambleEggImage = UIImage(named: scrambleEggPng)
        
        let omelettePng = "omelette.png"
        let omeletteImage = UIImage(named: omelettePng)
        
        let lemonMoussePiePng = "lemonmoussepie.png"
        let lemonMoussePieImage = UIImage(named: lemonMoussePiePng)
        
        let lemonMoussePng = "lemonMousse.png"
        let lemonMousseImage = UIImage(named: lemonMoussePng)
        
        let cheesecakePng = "cheesecake.png"
        let cheesecakeImage = UIImage(named: cheesecakePng)
        
        let carrotCakePng = "carrotCake.png"
        let carrotCakeImage = UIImage(named: carrotCakePng)
        
        let applePiePng = "applePie.png"
        let applePieImage = UIImage(named: applePiePng)
        
        let breadPng = "bread.png"
        let breadImage = UIImage(named: breadPng)
        
        let unkownFoodPng = "unkownfood.png"
        let unkownFoodImage = UIImage(named: unkownFoodPng)
        
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
            if (ingredients.containsSameElements(as: friedEgg) || ingredients.containsSameElements(as: butterFriedEgg)) && howTo == "pan"{
                view.backgroundColor = .blue
                label.text = "Congratulations, you've made a fried egg! Let's try more complex recipes now!"
                //IMAGE
                foodPictures(currentImage: friedEggImage!, posX: screenX*0.15, posY: screenY*0.3, imageWidth: 224, imageHeight: 200)
            } else if ingredients.containsSameElements(as: lemonMousse) && howTo == "mix" {
                label.text = "Congratulations, you've made a Lemon Mousse! You are starting to learn!"
                view.backgroundColor = .magenta
                //IMAGE
                foodPictures(currentImage: lemonMousseImage!, posX: screenX*0.13, posY: screenY*0.25, imageWidth: 258, imageHeight: 250)
            } else if ingredients.containsSameElements(as: applePie) && howTo == "bake" {
                label.text = "Congratulations, you've made an Apple pie! Was it hard for you?"
                view.backgroundColor = .cyan
                label.textColor = .black
                //IMAGE
                foodPictures(currentImage: applePieImage!, posX: screenX*0.12, posY: screenY*0.35, imageWidth: 250, imageHeight: 135)
            } else if ingredients.containsSameElements(as: brazilianCarrotCake) && howTo == "bake" {
                view.backgroundColor = .purple
                label.text = "Congratulations, you've made the Best carrot cake in the world!"
                //IMAGE
                foodPictures(currentImage: carrotCakeImage!, posX: screenX*0.13, posY: screenY*0.33, imageWidth: 250, imageHeight: 166)
            } else if (ingredients.containsSameElements(as: cheeseCake) || ingredients.containsSameElements(as: lemonCheeseCake) || ingredients.containsSameElements(as: appleCheeseCake)) && howTo == "bake" {
                view.backgroundColor = .magenta
                label.text = "Congratulations, you've made a cheesecake! There are different ways to do it and a lot of possible flavours!"
                //IMAGE
                foodPictures(currentImage: cheesecakeImage!, posX: screenX*0.13, posY: screenY*0.25, imageWidth: 250, imageHeight: 243)
            } else if ingredients.containsSameElements(as: lemonMoussePie) && howTo == "bake" {
                view.backgroundColor = .magenta
                label.text = "Congratulations, you've made a Lemon mousse pie! That is was a challenge!"
                //IMAGE
                foodPictures(currentImage: lemonMoussePieImage!, posX: screenX*0.13, posY: screenY*0.25, imageWidth: 258, imageHeight: 250)
            } else if (ingredients.containsSameElements(as: friedEgg) || ingredients.containsSameElements(as: butterFriedEgg)) && howTo == "mix"{
                view.backgroundColor = .blue
                label.text = "Congratulations, you've made scrambled eggs! Let's try more complex recipes now!"
                //IMAGE
                foodPictures(currentImage: scrambleEggImage!, posX: screenX*0.15, posY: screenY*0.3, imageWidth: 224, imageHeight: 200)
            } else if (ingredients.containsSameElements(as: omelete) || ingredients.containsSameElements(as: butterOmelete)) && howTo == "mix"{
                view.backgroundColor = .blue
                label.text = "Congratulations, you've made an omelette! Let's try more complex recipes now!"
                //IMAGE
                foodPictures(currentImage: omeletteImage!, posX: screenX*0.15, posY: screenY*0.3, imageWidth: 250, imageHeight: 201)
            } else if ingredients.containsSameElements(as: bread) && howTo == "bake" {
                view.backgroundColor = .cyan
                label.textColor = .black
                label.text = "Congratulations, you've made Bread! You are amazing!"
                //IMAGE
                foodPictures(currentImage: breadImage!, posX: screenX*0.15, posY: screenY*0.3, imageWidth: 224, imageHeight: 200)
            } else  {
                view.backgroundColor = .blue
                label.text = "Look like you made something entirely new! Is it good or is it bad? Well we have to know it for sure."
                //IMAGE
                foodPictures(currentImage: unkownFoodImage!, posX: screenX*0.15, posY: screenY*0.3, imageWidth: 224, imageHeight: 200)
            }
            
        }
        
        cooking()
        
    }
    
}
