//
//  ViewController.swift
//  facebook_page
//
//  Created by Ross on 30/10/2017.
//  Copyright © 2017 Ross. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var topBar: TopBar!
    var profileView: ProfileView!
    var segmentedControl: SegmentedControl!
    var scrollView: UIScrollView!
    var userPhotoOne: UIImageView!
    var userPhotoTwo: UIImageView!
    var userPhotoThree: UIImageView!
    var userPhotoFour: UIImageView!
    var userPhotoFive: UIImageView!



    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupViews()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        self.setupViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        self.scrollView.contentSize = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height)
    }

    
    func setupViews() {
            
        self.topBar = TopBar(frame: .zero)
        self.view.addSubview(self.topBar)
        self.topBar.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.2)
        }
        
        self.profileView = ProfileView(frame: .zero)
        self.view.addSubview(self.profileView)
        self.profileView.snp.makeConstraints { (make) in
            make.top.equalTo(topBar.snp.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
//            make.height.equalToSuperview().multipliedBy(0.3)
        }
        
        self.segmentedControl = SegmentedControl(frame: .zero)
        self.view.addSubview(self.segmentedControl)
        self.segmentedControl.snp.makeConstraints { (make) in
            make.top.equalTo(profileView.snp.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.04)
        }
        
        scrollView = UIScrollView(frame: view.bounds)
        self.view.addSubview(self.scrollView)
        self.scrollView.snp.makeConstraints { (make) in
            make.top.equalTo(segmentedControl.snp.bottom).offset(10)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        self.scrollView.backgroundColor = UIColor.white
        
        self.userPhotoOne = UIImageView(image: UIImage(named: "userPhotoOne")!)
        self.scrollView.addSubview(self.userPhotoOne)
        self.userPhotoOne.snp.makeConstraints { (make) in
            make.top.equalTo(scrollView.snp.top).inset(10)
            make.leading.equalToSuperview().inset(10)
            make.width.equalTo(90)
            make.height.equalTo(130)
        }
        
        self.userPhotoTwo = UIImageView(image: UIImage(named: "userPhotoTwo")!)
        self.scrollView.addSubview(self.userPhotoTwo)
        self.userPhotoTwo.snp.makeConstraints { (make) in
            make.top.equalTo(scrollView.snp.top).inset(10)
            make.leading.equalTo(userPhotoOne.snp.trailing).inset(-10)
            make.trailing.equalTo(segmentedControl.snp.trailing).inset(10)
            make.height.equalTo(130)
        }
        
        self.userPhotoThree = UIImageView(image: UIImage(named: "userPhotoThree")!)
        self.scrollView.addSubview(self.userPhotoThree)
        self.userPhotoThree.snp.makeConstraints { (make) in
            make.top.equalTo(userPhotoOne.snp.bottom).inset(-10)
            make.leading.equalTo(scrollView).inset(10)
            make.trailing.equalTo(segmentedControl.snp.trailing).inset(10)
            make.height.equalTo(200)
        }
        
        self.userPhotoFour = UIImageView(image: UIImage(named: "userPhotoFour")!)
        self.scrollView.addSubview(self.userPhotoFour)
        self.userPhotoFour.snp.makeConstraints { (make) in
            make.top.equalTo(userPhotoThree.snp.bottom).inset(-10)
            make.leading.equalTo(scrollView).inset(10)
            make.trailing.equalTo(segmentedControl.snp.trailing).inset(10)
            make.height.equalTo(200)
        }
        
        self.userPhotoFive = UIImageView(image: UIImage(named: "userPhotoFive")!)
        self.scrollView.addSubview(self.userPhotoFive)
        self.userPhotoFive.snp.makeConstraints { (make) in
            make.top.equalTo(userPhotoFour.snp.bottom).inset(-10)
            make.leading.equalTo(scrollView).inset(10)
            make.trailing.equalTo(segmentedControl.snp.trailing).inset(10)
            make.height.equalTo(200)
        }

    }
}

