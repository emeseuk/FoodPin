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
    @IBOutlet var closeButton: UIButton!
    
    var restaurant : RestaurantMO!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let restaurantImage = restaurant.image {
            backgroundImageView.image = UIImage(data: restaurantImage as Data)
        }
        
        // Applying the blur effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        if let restaurantImage = restaurant.image {
            backgroundImageView.image = UIImage(data: restaurantImage as Data)
        }
        
        let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        let moveDownTransform = CGAffineTransform.init(translationX: 0, y: -100)
        
        let scaleUpTransform = CGAffineTransform.init(scaleX: 5.0, y: 5.0)
        let moveScaleTransform = scaleUpTransform.concatenating(moveRightTransform)
        
        // Make the button invisible and move off the screen
        for rateButton in rateButtons {
            rateButton.transform = moveScaleTransform
            rateButton.alpha = 0
        }
        
        closeButton.transform = moveDownTransform
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var delay = 0.1

        for rateButton in rateButtons {
            delay += 0.05
            UIView.animate(withDuration: 0.4, delay: delay, options: [], animations: {
                rateButton.alpha = 1.0
                rateButton.transform = .identity
            }, completion: nil)
        }
        
        UIView.animate(withDuration: 0.4, delay: 0.3, options: [], animations: {
            self.closeButton.transform = .identity
        }, completion: nil)
    }
    
    @IBAction func close(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }

}
