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
Here you add the ingredients
 */
//#-hidden-code
cook(recipe:[
//#-code-completion(lemon, milk, egg, sugar, carrot, flour, salt, bakingPowder, oil, cream, margarine, creamCheese, crackers, vanilla)
//#-end-hidden-code
//#-editable-code

//#-end-editable-code
//#-hidden-code
])
//#-end-hidden-code
/*:
Here you choose how your recipe will be built, the method used can alter the final result
 */
//#-hidden-code
//#-code-completion(bake, pan, mix)
method(technique:
//#-end-hidden-code
//#-editable-code
    
//#-end-editable-code
//#-hidden-code
)
//#-end-hidden-code
//#-hidden-code


PlaygroundPage.current.liveView = rightView
//#-end-hidden-code






