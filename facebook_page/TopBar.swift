//
//  TopBar.swift
//  facebook_page
//
//  Created by Ross on 30/10/2017.
//  Copyright © 2017 Ross. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
    
    class TopBar: UIView {
        
        fileprivate static let padding: CGFloat = 10.0
        
        var topBar: TopBar!
        var outerContainerView: UIView!
        var searchButton: UIButton!
        var tweetButton: UIButton!
        
        
        override init (frame: CGRect) {
            super.init(frame: frame)
            
            self.setupViews()
        }
        
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            
            self.setupViews()
        }
        
        
        func setupViews() {
            
            self.outerContainerView = UIView(frame: .zero)
            self.addSubview(self.outerContainerView)
            self.outerContainerView.snp.makeConstraints { (make) in
                make.top.equalTo(self)
                make.leading.equalTo(self)
                make.trailing.equalTo(self)
                make.height.equalTo(self)
            }
            
            self.outerContainerView.backgroundColor = UIColor.black
            
            self.tweetButton = UIButton(frame: .zero)
            self.outerContainerView.addSubview(self.tweetButton)
            self.tweetButton.snp.makeConstraints { (make) in
                make.top.equalTo(outerContainerView).inset(TopBar.padding)
                make.trailing.equalTo(outerContainerView).inset(TopBar.padding)
                make.height.equalTo(outerContainerView.snp.height).multipliedBy(0.2)
                make.width.equalTo(tweetButton.snp.height)
            }
            
            self.tweetButton.setImage(UIImage(named: "tweet"), for: .normal)
            self.tweetButton.contentMode = .scaleAspectFill
            
            self.searchButton = UIButton(frame: .zero)
            self.outerContainerView.addSubview(self.searchButton)
            self.searchButton.snp.makeConstraints { (make) in
                make.top.equalTo(outerContainerView).inset(TopBar.padding)
                make.trailing.equalTo(tweetButton.snp.leading)
                make.height.equalTo(tweetButton.snp.height)
                make.width.equalTo(searchButton.snp.height)
            }
            
            self.searchButton.setImage(UIImage(named: "magnifying_glass"), for: .normal)
      
    }

}
