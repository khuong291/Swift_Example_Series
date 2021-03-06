//
//  ViewController.swift
//  SwipeViewController
//
//  Created by Khuong Pham on 3/31/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import UIKit
import SwipeViewController

class ViewController: SwipeViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let VC1 = UIViewController()
        VC1.view.backgroundColor = UIColor(red: 0.19, green: 0.36, blue: 0.60, alpha: 1.0)
        VC1.title = "VC1"
        let VC2 = UIViewController()
        VC2.view.backgroundColor = UIColor(red: 0.70, green: 0.23, blue: 0.92, alpha: 1.0)
        VC2.title = "VC2"
        let VC3 = UIViewController()
        VC3.view.backgroundColor = UIColor(red: 0.17, green: 0.70, blue: 0.27, alpha: 1.0)
        VC3.title = "VC3"


        setViewControllerArray([VC1, VC2, VC3])
        setSelectionBar(80, height: 3, color: UIColor(red: 0.23, green: 0.55, blue: 0.92, alpha: 1.0))
        setButtonsWithSelectedColor(UIFont.systemFontOfSize(18), color: UIColor.blackColor(), selectedColor: UIColor(red: 0.23, green: 0.55, blue: 0.92, alpha: 1.0))

        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "push")
        setNavigationWithItem(UIColor.whiteColor(), leftItem: barButtonItem, rightItem: nil)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func push() {
        let VC4 = UIViewController()
        VC4.view.backgroundColor = UIColor.purpleColor()
        VC4.title = "VC4"
        self.pushViewController(VC4, animated: true)
    }


}

