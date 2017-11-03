//
//  SegmentedControl.swift
//  facebook_page
//
//  Created by Ross on 02/11/2017.
//  Copyright © 2017 Ross. All rights reserved.
//

import UIKit
import SnapKit

class SegmentedControl: UISegmentedControl {
    
    
    fileprivate static let padding: CGFloat = 10.0
    
    let segmentedControl = UISegmentedControl (items: ["Tweets","Photos","Favorites"])
    
    var bottomBar: UIView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.setupViews()
    }
    
    func setupViews() {
    
        self.addSubview(segmentedControl)
        self.segmentedControl.snp.makeConstraints { (make) in
            make.top.equalTo(self)
            make.leading.equalTo(self).inset(SegmentedControl.padding)
            make.trailing.equalTo(self).inset(SegmentedControl.padding)
            make.height.equalTo(self)
        }
        
        self.segmentedControl.addTarget(self, action: #selector(SegmentedControl.segmentedValueChanged(_:)), for: .valueChanged)
        self.segmentedControl.selectedSegmentIndex = 1
        self.segmentedControl.tintColor = UIColor.lightGray
        self.segmentedControl.backgroundColor = UIColor.white
        
        self.bottomBar = UIView(frame: .zero)
        self.segmentedControl.addSubview(self.bottomBar)
        self.bottomBar.snp.makeConstraints { (make) in
            make.top.equalTo(segmentedControl.snp.bottom).offset(SegmentedControl.padding)
            make.leading.equalToSuperview().offset(-SegmentedControl.padding)
            make.trailing.equalToSuperview().offset(SegmentedControl.padding)
            make.height.equalTo(1)
           
        self.bottomBar.backgroundColor = UIColor.init(red: 0.9176, green: 0.9176, blue: 0.9176, alpha: 1)
        }
    }


    func segmentedValueChanged(_ sender:UISegmentedControl!) {
        print("Selected Segment Index is : \(sender.selectedSegmentIndex)")
    }
}

