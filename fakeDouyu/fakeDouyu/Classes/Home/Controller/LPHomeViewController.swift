//
//  LPHomeViewController.swift
//  fakeDouyu
//
//  Created by wslp0314 on 2017/8/16.
//  Copyright © 2017年 goout. All rights reserved.
//

import UIKit

class LPHomeViewController: UIViewController {
    lazy var pageTitleView :LPPageTitleView = {
        let titleFrame = CGRect(x: 0, y: kLPNavgationbar + kLPStatusHeight, width: Int(kLPScreenWidth), height: Int(kLPTitleViewHeight))
        let titles = ["推荐", "游戏", "娱乐", "电玩"]
        let pageTitleView = LPPageTitleView(frame: titleFrame, titles: titles)
        return pageTitleView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    
}

//MARK: - 设置UI界面
extension LPHomeViewController {
    func setUI () {
        automaticallyAdjustsScrollViewInsets = false
        //1.设置导航栏
        setNavgationbar()
        
        //2.给view增加 titleView
        self.view.addSubview(pageTitleView)
        
    }
    
    func setNavgationbar () {
        let btn = UIButton()
        btn.setBackgroundImage(#imageLiteral(resourceName: "logo"), for: .normal)
        btn.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        
//        let size = CGSize(width: 50, height: 50)
//        let point = CGPoint(x: 0, y: 0)
//        let historyBtn = UIButton();
//        historyBtn.setImage(#imageLiteral(resourceName: "image_my_history"), for: .normal)
//        historyBtn.setImage(#imageLiteral(resourceName: "Image_my_history_click"), for: .highlighted)
//        historyBtn.frame = CGRect(origin: point, size: size)
//        let searchBtn = UIButton()
//        searchBtn.setImage(#imageLiteral(resourceName: "btn_search"), for: .normal)
//        searchBtn.setImage(#imageLiteral(resourceName: "btn_search_clicked"), for: .highlighted)
//        searchBtn.frame = CGRect(origin: point, size: size)
//        let qrCodeBtn = UIButton()
//        qrCodeBtn.setImage(#imageLiteral(resourceName: "Image_scan"), for: .normal)
//        qrCodeBtn.setImage(#imageLiteral(resourceName: "Image_scan_click"), for: .highlighted)
//        qrCodeBtn.frame = CGRect(origin: point, size: size)
        let size = CGSize(width: 40, height: 40)
        let historyItem = UIBarButtonItem.init(normalIcon: #imageLiteral(resourceName: "image_my_history"), highlightIcon: #imageLiteral(resourceName: "Image_my_history_click"), size: size)
        let searchItem = UIBarButtonItem.init(normalIcon: #imageLiteral(resourceName: "btn_search"), highlightIcon: #imageLiteral(resourceName: "btn_search_clicked"), size: size)
        let qrCodeItem = UIBarButtonItem.init(normalIcon: #imageLiteral(resourceName: "Image_scan"), highlightIcon: #imageLiteral(resourceName: "Image_scan_click"), size: size)
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrCodeItem]
    }
    
}
