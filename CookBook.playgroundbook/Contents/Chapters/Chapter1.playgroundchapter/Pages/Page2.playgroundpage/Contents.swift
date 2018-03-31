//#-hidden-code
/*
 Copyright Antônio Salgado 2017. All Rights Reserved.
 */
//#-end-hidden-code
/*:

 
 */
//#-hidden-code
import PlaygroundSupport
import UIKit

let rightView = ViewController()

let lemon = "lemon"
let milk = "milk"
let egg = "egg"
let sugar = "sugar"
let carrot = "carrot"
let flour = "flour"
let salt = "salt"
let bakingPowder = "baking powder"
let oil = "oil"
let cream = "cream"
let butter = "butter"
let creamCheese = "cream cheese"
let crackers = "crackers"
let vanilla = "vanilla"
let apple = "apple"

let bake = "bake"
let pan = "pan"
let mix = "mix"

func cook(recipe:[String]){
    rightView.ingredients = recipe
}

func method(technique:String){
    rightView.howTo = technique
}
//#-end-hidden-code
/*:
 Here you add the ingredients, just add the names followed by a comma. (Example: Egg, oil)
 */
//#-hidden-code
cook(recipe:[
//#-code-completion(everything, hide)
//#-code-completion(everything, show, lemon,milk,egg,sugar,carrot,flour, salt, bakingPowder, oil, cream, margarine, creamCheese, crackers,vanilla)
//#-end-hidden-code
//#-editable-code

//#-end-editable-code
//#-hidden-code
])
//#-end-hidden-code
/*:
Here you choose how your recipe will be built, the method used can alter the final result. You can only use one.
 */
//#-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(everything, bake, pan, mix)
method(technique:
//#-end-hidden-code
//#-editable-code
    
//#-end-editable-code
//#-hidden-code
)
//#-end-hidden-code
/*:
 The beauty about cooking and programming is that you can try different formulas for the same product. There are different recipes for a bread or a fried egg, also for an app. I could've done this playgroundBook with different frameworks.
 Sometimes you will only know wich option is better after doing and testing it. When I learn a knew recipe I am always eager to learn new ones. I hope this book open your appetite for good food, knowledge and programming.
 Best regards,
 PS: I added my favourite recipes here(Cheesecake, eggs, lemon mousse,  brazilian carrot cake and apple pie), but there are many possibilities, some that I couldn't predict feel free to create and inovate! **You can find the documentation of the CookLanguage on the next page!**
 */
//#-hidden-code


PlaygroundPage.current.liveView = rightView
//#-end-hidden-code






