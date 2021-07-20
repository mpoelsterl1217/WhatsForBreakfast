//
//  ViewController.swift
//  WhatsForBreakfast
//
//  Created by Matthew Poelsterl on 7/19/21.
//

import UIKit

class ViewController: UIViewController {
    //Globals
    var randomNum: Int = 0
    func newBreakfastImage() {
        randomNum = Int.random(in: 1...4)
        switch randomNum {
        case 0:
            breakfastImageView.image = UIImage(named: "Bagel")
        case 1:
            breakfastImageView.image = UIImage(named: "Cereal")
        case 2:
            breakfastImageView.image = UIImage(named: "EggsBacon")
        case 3:
            breakfastImageView.image = UIImage(named: "Pancakes")
        case 4:
            breakfastImageView.image = UIImage(named: "Toast")
        default:
            breakfastImageView.image = UIImage(named: "AskAgain")
        }
    }
    
    //Outlets
    @IBOutlet weak var breakfastImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Actions
    @IBAction func buttonPressed(_ sender: UIButton) {
        newBreakfastImage()
    }
    
}

