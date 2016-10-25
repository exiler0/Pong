//
//  GameScene.swift
//  Pong
//
//  Created by Gopal Chitaure on 10/24/16.
//  Copyright © 2016 Gopal Chitaure. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    var ball = SKSpriteNode()
    var player1 = SKSpriteNode()
    var player2 = SKSpriteNode()
    
    override func sceneDidLoad() {
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        player1 = self.childNode(withName: "player1") as! SKSpriteNode
        player2 = self.childNode(withName: "player2") as! SKSpriteNode
        ball.physicsBody?.applyImpulse(CGVector(dx:-30, dy:30))
        
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction=0
        border.restitution=1
        self.physicsBody=border

            }
    
    

    override func update(_ currentTime: TimeInterval) {
        
            }
}
