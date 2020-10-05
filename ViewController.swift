//
//  ViewController.swift
//  App2
//
//  Created by Christian Bain on 10/5/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var workoutButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func handleSelection(_ sender: UIButton) {
        workoutButtons.forEach { (button) in
            UIView.animate(withDuration: 0.5) {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            }
        }
    
    }
    
    enum Workouts: String {
        case emom = "EMOM"
        case amrap = "AMRAP"
        
    }
    
    @IBAction func workoutTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let workout = Workouts(rawValue: title) else {
            return
        }
        
        switch workout {
        case .emom:
            print("EMOM selected")
        case .amrap:
            print("AMRAP selected")
        default:
            print("workout selected")
        }
    }
}

