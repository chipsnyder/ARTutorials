//
//  ViewController.swift
//  ARKitDemo
//
//  Created by Chip Snyder on 6/2/18.
//  Copyright © 2018 EisbarDev. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBox()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sceneView.session.run(ARWorldTrackingConfiguration())
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }
    
    func addBox() {
        let box = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        
        let boxNode = SCNNode(geometry: box)
        boxNode.position = SCNVector3(0, 0, -0.2)
        sceneView.scene.rootNode.addChildNode(boxNode)
    }
}

