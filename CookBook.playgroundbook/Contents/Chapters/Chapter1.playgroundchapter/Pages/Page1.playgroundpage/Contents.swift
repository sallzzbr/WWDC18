//#-hidden-code
/*
 Copyright Antônio Salgado 2017. All Rights Reserved.
 */
//#-end-hidden-code
/*:
 Welcome to my musical Playground,

 */
//#-hidden-code
import PlaygroundSupport
import UIKit

let rightView = ViewController()

func cook(recipe:String){
    rightView.ingredients = recipe
}
//#-end-hidden-code

cook(recipe:/*#-editable-code*/"lemon"/*#-end-editable-code*/)


//#-hidden-code


PlaygroundPage.current.liveView = rightView
//#-end-hidden-code






