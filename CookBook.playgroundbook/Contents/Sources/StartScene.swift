import SpriteKit
import GameplayKit

public class GameSceneAnimation: SKScene {
    
    var background: SKSpriteNode!
    
    public override init(size: CGSize) {
        super.init(size: size)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func didMove(to view: SKView) {
        
        self.backgroundColor = UIColor.white
        self.background = SKSpriteNode(imageNamed: "kitchen.jpg")
        self.background.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        self.background.size = self.frame.size
        self.background.zPosition = 0
        self.addChild(self.background)
        
    }

}
