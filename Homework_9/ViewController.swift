//
//  ViewController.swift
//  Homework_9
//
//  Created by user187279 on 12/30/20.
//

import Spring
import UIKit

class ViewController: UIViewController {
    
    var animations = ["shake", "pop", "morph"]

    @IBOutlet weak var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springButtonPressed: SpringButton!
    
    @IBOutlet var springTitleLabel: UILabel!
    private var originCoordinate: CGFloat?
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        originCoordinate = coreAnimationView.frame.origin.x
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func coreAnimationButtonPressed(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: [.autoreverse, .repeat]) { [weak self] in
            guard let self = self else  { return }
            
            if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                self.coreAnimationView.frame.origin.x -= 20
            }
        }
    }
    
    @IBAction func springAnimationButton(_ sender: SpringButton) {
        let animation = animations.randomElement()
        springAnimationView.animation = animation!
        springTitleLabel.text = animation
        springButtonPressed.setTitle(animation!, for: .normal)
        springAnimationView.animate()
    }
    
    
    
    
}

