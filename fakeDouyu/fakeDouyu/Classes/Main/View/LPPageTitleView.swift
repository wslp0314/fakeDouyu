//
//  LPPageTitleView.swift
//  fakeDouyu
//
//  Created by wslp0314 on 2017/8/17.
//  Copyright © 2017年 goout. All rights reserved.
//

import UIKit

class LPPageTitleView: UIView {
    //MARK: - 定义属性
    var titles : [String]
    
    //MARK: - 懒加载属性
    lazy var titleScrollView : UIScrollView = {
        let titleScrollView = UIScrollView()
        titleScrollView.bounces = false
        titleScrollView.showsHorizontalScrollIndicator = false
        titleScrollView.scrollsToTop = false
        return titleScrollView
    }()
    
    lazy var scrollLine : UIView = {
        let scrollLine = UIView()
        scrollLine.backgroundColor = UIColor.orange
        return scrollLine
    }()
    
    lazy var titleLabels = [UILabel]()
    
    
    //MARK: - 自定义构造函数
    init(frame: CGRect , titles: [String]) {
        self.titles = titles
        super.init(frame: frame)
        setUpUI()
        
    }
    
    //自定义构造函数 之后需要实现  以下的函数
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}


//设置titleView的UI界面
extension LPPageTitleView {
    func setUpUI() {
        self.addSubview(titleScrollView)
        titleScrollView.frame = bounds
        setUpTitleLabels()
        setUpBottomMenuAndScrollLine()
    }
    
    func setUpTitleLabels () {
        
        let labelW = CGFloat(kLPScreenWidth / CGFloat(titles.count))
        let labelH = CGFloat(kLPTitleViewHeight - 2)
        let labelY = CGFloat(0)
        
        for (index, title) in titles.enumerated() {
            let label = UILabel()
            let labelX = CGFloat(labelW * CGFloat(index))
            label.frame = CGRect(x: labelX, y: CGFloat(labelY), width: labelW, height: labelH)
            label.text = title
            label.font = UIFont.systemFont(ofSize: 16)
            label.tag = index
            label.textColor = UIColor.darkGray
            label.textAlignment = .center
            titleLabels.append(label)
            titleScrollView .addSubview(label)
        }
    }
    
    func setUpBottomMenuAndScrollLine () {
        let line = UIView()
        line.backgroundColor = UIColor.lightGray
        let lineW = 0.5
        line.frame = CGRect(x: 0.0, y: Double(frame.height) - lineW, width: Double(kLPScreenWidth), height: lineW)
        addSubview(line)
        titleScrollView.addSubview(scrollLine)
        
        guard let firstLabel = titleLabels.first else {
            return
        }
        
        scrollLine.frame = CGRect(x: firstLabel.frame.origin.x, y: frame.height - 2, width: firstLabel.frame.width, height: 2)
    }
}
