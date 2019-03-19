//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Emese Toth on 19/03/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var rateButtons: [UIButton]!
    
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImageView.image = UIImage(named: restaurant.image)
        
        // Applying the blur effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        // Make the button invisible
        for rateButton in rateButtons {
            rateButton.alpha = 0
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.4, delay: 0.1, options: [], animations: {
            self.rateButtons[0].alpha = 1.0
        }, completion: nil)
        UIView.animate(withDuration: 0.4, delay: 0.15, options: [], animations: {
            self.rateButtons[1].alpha = 1.0
        }, completion: nil)
        UIView.animate(withDuration: 0.4, delay: 0.2, options: [], animations: {
            self.rateButtons[2].alpha = 1.0
        }, completion: nil)
        UIView.animate(withDuration: 0.4, delay: 0.25, options: [], animations: {
            self.rateButtons[3].alpha = 1.0
        }, completion: nil)
        UIView.animate(withDuration: 0.4, delay: 0.3, options: [], animations: {
            self.rateButtons[4].alpha = 1.0
        }, completion: nil)
    }
    
    @IBAction func close(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }

}
