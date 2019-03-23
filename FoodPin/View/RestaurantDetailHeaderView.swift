//
//  RestaurantDetailHeaderView.swift
//  FoodPin
//
//  Created by Emese Toth on 04/03/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit

class RestaurantDetailHeaderView: UIView {
    
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var ratingImageView: UIImageView!

    
    @IBOutlet var typeLabel: UILabel! {
        didSet {
            typeLabel.layer.cornerRadius = 5.0
            typeLabel.layer.masksToBounds = true
        }
    }
    
    @IBOutlet var nameLabel: UILabel! {
        didSet {
            nameLabel.numberOfLines = 0
        }
    }
    
    @IBOutlet var heartImageView: UIImageView! {
        didSet {
            headerImageView.image = UIImage(named: "heart-tick")?.withRenderingMode(.alwaysTemplate)
            headerImageView.tintColor = .white
        }
    }

}
