//
//  UINavigationController+Ext.swift
//  FoodPin
//
//  Created by Emese Toth on 10/03/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    open override var childForStatusBarStyle: UIViewController? {
        return topViewController
    }
}
