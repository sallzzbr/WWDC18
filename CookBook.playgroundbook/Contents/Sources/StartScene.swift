import SpriteKit
import GameplayKit

public class GameSceneAnimation: SKScene {
    
    var background: SKSpriteNode!
    var fridge: SKSpriteNode!
    var cooker: SKSpriteNode!
    var flower: SKSpriteNode!
    var locker: SKSpriteNode!
    
    public override init(size: CGSize) {
        super.init(size: size)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func didMove(to view: SKView) {
        
        self.backgroundColor = UIColor.white
        self.background = SKSpriteNode(imageNamed: "kitchenWall.png")
        self.background.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        self.background.size = self.frame.size
        self.background.zPosition = 0
        self.addChild(self.background)
        
        self.fridge = SKSpriteNode(imageNamed: "fridge.png")
        let fridgeProportion = (fridge.texture?.size().height)!/(fridge.texture?.size().width)!
        self.fridge.size = CGSize(width: self.size.width/2, height: self.size.width/2 * fridgeProportion)
        self.fridge.position = CGPoint(x: self.frame.midX * 1.45, y: self.frame.midY - self.frame.midY/2.7)
        self.fridge.zPosition = 1
        self.addChild(self.fridge)
        
        self.cooker = SKSpriteNode(imageNamed: "cooker.png")
        let cookerProportion = (cooker.texture?.size().height)!/(cooker.texture?.size().width)!
        self.cooker.size = CGSize(width: self.size.width/2.2, height: self.size.width/2.2 * cookerProportion)
        self.cooker.position = CGPoint(x: self.frame.midX * 0.5, y: self.frame.midY - self.frame.midY/1.72)
        self.cooker.zPosition = 1
        self.addChild(self.cooker)
        
        self.flower = SKSpriteNode(imageNamed: "flower.png")
        let flowerProportion = (flower.texture?.size().height)!/(flower.texture?.size().width)!
        self.flower.size = CGSize(width: self.size.width/2.4, height: self.size.width/2.4 * flowerProportion)
        self.flower.position = CGPoint(x: self.frame.midX * 0.5, y: self.frame.midY * 1.1)
        self.flower.zPosition = 1
        self.addChild(self.flower)
        
        self.locker = SKSpriteNode(imageNamed: "locker.png")
        let lockerProportion = (locker.texture?.size().height)!/(locker.texture?.size().width)!
        self.locker.size = CGSize(width: self.size.width/1.2, height: self.size.width/1.2 * lockerProportion)
        self.locker.position = CGPoint(x: self.frame.midX, y: self.frame.midY * 1.6)
        self.locker.zPosition = 1
        self.addChild(self.locker)
        
    }

}
