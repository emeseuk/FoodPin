//
//  WalkthroughViewController.swift
//  FoodPin
//
//  Created by Emese Toth on 07/04/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController {

    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var nextButton: UIButton! {
        didSet {
            nextButton.layer.cornerRadius = 25.0
            nextButton.layer.masksToBounds = true
        }
    }
    @IBOutlet var skipButton: UIButton!
    
    var walkthroughPageViewController: WalkthroughPageViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        if let pageViewController = destination as? WalkthroughPageViewController {
            walkthroughPageViewController = pageViewController
        }
    }

    @IBAction func skipButtonTapped(sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButtonTapped(sender: UIButton) {
        if let index = walkthroughPageViewController?.currentIndex {
            switch index {
            case 0...1:
                walkthroughPageViewController?.forwardPage()
            case 2:
                dismiss(animated: true, completion: nil)
            default: break
            }
        }
        updateUI()
    }

    func updateUI() {
        if let index = walkthroughPageViewController?.currentIndex {
            switch index {
            case 0...1:
                nextButton.setTitle("NEXT", for: .normal)
                skipButton.isHidden = false
            case 2:
                nextButton.setTitle("GET STARTED", for: .normal)
                skipButton.isHidden = true
            default: break
            }
            pageControl.currentPage = index
        }
    }
}
