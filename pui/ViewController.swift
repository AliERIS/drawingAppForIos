//
//  ViewController.swift
//  pui
//
//  Created by Ali Eriş on 8.01.2023.
//

import UIKit
import PencilKit

class ViewController: UIViewController, PKCanvasViewDelegate {

    
    let myCanvas = PKCanvasView()
    let toolPicker = PKToolPicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myCanvas.delegate = self
        
        view.addSubview(myCanvas)
        myCanvas.drawingPolicy = .anyInput
      
        toolPicker.setVisible(true, forFirstResponder: myCanvas)
        toolPicker.addObserver(myCanvas)
        myCanvas.becomeFirstResponder()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myCanvas.frame = view.bounds
    }
    

}
