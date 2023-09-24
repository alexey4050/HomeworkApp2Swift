//
//  ViewController.swift
//  AppHomework2
//
//  Created by testing on 23.09.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var yellowView: UIView!
    
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    var currentSignal = 0
    let colors: [UIColor] = [.red, .yellow, .green]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        startButton.layer.cornerRadius = 10
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }

    @IBAction func changeSignal(_ sender: UIButton) {
        
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
            changeSignal()
        } else {
            changeSignal()
        }
    }
    
    func changeSignal() {
        switch currentSignal {
        case 0:
            redView.alpha = 1.0
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        case 1:
            redView.alpha = 0.3
            yellowView.alpha = 1.0
            greenView.alpha = 0.3
        case 2:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1.0
            
        default:
            break
        }
        currentSignal = (currentSignal + 1) % colors.count
    }
    
}

