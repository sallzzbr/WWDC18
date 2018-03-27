import UIKit
import PlaygroundSupport

public class OpenViewController: UIViewController {
    
    override public func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "oi"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
    }
    
}
