//
//  UIBarbuttonItem+Extention.swift
//  fakeDouyu
//
//  Created by wslp0314 on 2017/8/17.
//  Copyright © 2017年 goout. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    class func creatItem(normalIcon: UIImage , highlightIcon: UIImage) -> UIBarButtonItem {
        let btn = UIButton()
        let point = CGPoint(x: 0, y: 0)
        let size = CGSize(width: 40, height: 40)
        btn.setImage(normalIcon, for: .normal)
        btn.setImage(highlightIcon, for: .highlighted)
        btn.frame = CGRect(origin: point, size: size)
        return UIBarButtonItem(customView: btn)
    }
    
    /* 在系统类的扩展函数  扩充构造函数时  只能  扩充  便利构造函数  
        (构造函数前  必须要加 convenience)
        (在构造函数 里面实现  self.init 函数)-----相当于  return 这个的类函数
    */
    convenience init(normalIcon: UIImage , highlightIcon: UIImage , size : CGSize) {
        let btn = UIButton()
        let point = CGPoint(x: 0, y: 0)
        btn.setImage(normalIcon, for: .normal)
        btn.setImage(highlightIcon, for: .highlighted)
        btn.frame = CGRect(origin: point, size: size)
        self.init(customView: btn)
    }
}
