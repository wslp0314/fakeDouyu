//
//  LPMainViewController.swift
//  fakeDouyu
//
//  Created by wslp0314 on 2017/8/16.
//  Copyright © 2017年 goout. All rights reserved.
//

import UIKit

class LPMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildVC(vc: "Home")
        addChildVC(vc: "Live")
        addChildVC(vc: "Follow")
        addChildVC(vc: "Profile")
    }
    
    private func addChildVC(vc : String) {
        //通过 storyName 加入 tabbar
        let childHome = UIStoryboard(name: vc, bundle: nil).instantiateInitialViewController()!
        addChildViewController(childHome)
    }

}
