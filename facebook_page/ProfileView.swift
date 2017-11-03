//
//  ProfileView.swift
//  facebook_page
//
//  Created by Ross on 30/10/2017.
//  Copyright © 2017 Ross. All rights reserved.
//
import Foundation
import UIKit
import SnapKit

struct ProfileViewStyle {
    
    let peopleIconSize = 45
    let editProfileButtonSize = 110
    let buttonHeight = 30
    
}

class ProfileView: UIView {

    fileprivate static let padding: CGFloat = 10.0
    
    let profileViewStyle = ProfileViewStyle()

    var profileView: ProfileView!
    var outerContainerView: UIView!
    var profileImage: UIImageView!
    var nameLabel: UILabel!
    var tweetName: UILabel!
    var bio: UILabel!
    var followingNumber: UILabel!
    var followingLabel: UILabel!
    var followersNumber: UILabel!
    var followersLabel: UILabel!
    var editProfileButton: UIButton!
    var peopleIconButton: UIButton!
    var settingsIcon: UIButton!
    let greyColor = UIColor(red: 190/255, green: 190/255, blue: 190/255, alpha: 1)

    
    override init(frame: CGRect) {
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
//            make.height.equalTo(self)
        }
        
        self.outerContainerView.backgroundColor = UIColor.yellow
        
        self.profileImage = UIImageView(image: UIImage(named: "profile_pic")!)
        self.outerContainerView.addSubview(self.profileImage)
        self.profileImage.snp.makeConstraints { (make) in
            make.centerY.equalTo(outerContainerView.snp.top)
            make.leading.equalTo(outerContainerView).inset(ProfileView.padding)
            make.height.equalTo(75)
            make.width.equalTo(profileImage.snp.height)
        }
        
        self.profileImage.clipsToBounds = true
        self.profileImage.layer.cornerRadius = 12
        
        self.nameLabel = UILabel(frame: .zero)
        self.outerContainerView.addSubview(self.nameLabel)
        self.nameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(profileImage.snp.bottom).offset(ProfileView.padding)
            make.leading.equalTo(outerContainerView).inset(ProfileView.padding)
            make.trailing.equalTo(outerContainerView)
        }
        
        self.nameLabel.text = "Mara Shiebley"
        self.nameLabel.font = UIFont.boldSystemFont(ofSize: 24)


        self.editProfileButton = UIButton(frame: .zero)
        self.outerContainerView.addSubview(self.editProfileButton)
        self.editProfileButton.snp.makeConstraints { (make) in
            make.top.equalTo(outerContainerView).inset(ProfileView.padding)
            make.trailing.equalTo(outerContainerView).inset(ProfileView.padding)
            make.width.equalTo(profileViewStyle.editProfileButtonSize)
            make.height.equalTo(profileViewStyle.buttonHeight)
        }
        
        self.editProfileButton.setTitle("Edit Profile", for: .normal)
        self.editProfileButton.layer.borderWidth = 1.0
        self.editProfileButton.layer.cornerRadius = 4
        self.editProfileButton.layer.borderColor = greyColor.cgColor
        self.editProfileButton.setTitleColor(.lightGray, for: .normal)
        self.editProfileButton.setTitleShadowColor(UIColor.blue, for: .selected)
        self.editProfileButton.contentHorizontalAlignment = .center

        
        self.peopleIconButton = UIButton(frame: .zero)
        self.outerContainerView.addSubview(self.peopleIconButton)
        self.peopleIconButton.snp.makeConstraints { (make) in
            make.top.equalTo(outerContainerView).inset(ProfileView.padding)
            make.right.equalTo(editProfileButton.snp.left).offset(-ProfileView.padding * 0.5)
            make.width.equalTo(profileViewStyle.peopleIconSize)
            make.height.equalTo(profileViewStyle.buttonHeight)
        }
        
        self.peopleIconButton.setImage(UIImage(named: "peeps"), for: .normal)
        self.peopleIconButton.layer.borderWidth = 1.0
        self.peopleIconButton.layer.cornerRadius = 4
        self.peopleIconButton.layer.borderColor = greyColor.cgColor
        self.peopleIconButton.contentMode = .scaleAspectFill
        
        self.settingsIcon = UIButton(frame: .zero)
        self.outerContainerView.addSubview(self.settingsIcon)
        self.settingsIcon.snp.makeConstraints { (make) in
            make.top.equalTo(outerContainerView).inset(ProfileView.padding)
            make.trailing.equalTo(peopleIconButton.snp.leading).offset(-ProfileView.padding * 0.5)
            make.width.equalTo(profileViewStyle.buttonHeight)
            make.height.equalTo(profileViewStyle.buttonHeight)

        }
        
        self.settingsIcon.setImage(UIImage(named: "settings"), for: .normal)
        self.settingsIcon.contentMode = .scaleAspectFill

        self.tweetName = UILabel(frame: .zero)
        self.outerContainerView.addSubview(self.tweetName)
        self.tweetName.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom)
            make.leading.equalTo(outerContainerView).inset(ProfileView.padding)
        }
        
        self.tweetName.text = "@mari18"
        self.tweetName.font = UIFont(name: "HelveticaNeue-Light", size: 12)
        self.tweetName.textColor = UIColor.lightGray

        
        self.bio = UILabel(frame: .zero)
        self.outerContainerView.addSubview(self.bio)
        self.bio.snp.makeConstraints { (make) in
            make.top.equalTo(tweetName.snp.bottom).offset(ProfileView.padding)
            make.leading.equalTo(outerContainerView).inset(ProfileView.padding)
            make.trailing.equalTo(outerContainerView).inset(ProfileView.padding)
        }
        
        self.bio.numberOfLines = 6
        self.bio.minimumScaleFactor = 0.7
        self.bio.adjustsFontSizeToFitWidth = true
        self.bio.font = UIFont(name: "HelveticaNeue", size: bio.font.pointSize)
        self.bio.text = "Designer. Currently @ Walker & Co. Formerly @foursquare. I like to document my life.                   New York City     marysheibley.com"
        
        self.followingNumber = UILabel(frame: .zero)
        self.outerContainerView.addSubview(self.followingNumber)
        self.followingNumber.snp.makeConstraints { (make) in
            make.top.equalTo(bio.snp.bottom).offset(ProfileView.padding)
            make.leading.equalTo(outerContainerView).inset(ProfileView.padding)
        }
        
        self.followingNumber.text = "571"

        
        self.followingLabel = UILabel(frame: .zero)
        self.outerContainerView.addSubview(self.followingLabel)
        self.followingLabel.snp.makeConstraints { (make) in
            make.top.equalTo(bio.snp.bottom).offset(ProfileView.padding)
            make.leading.equalTo(followingNumber.snp.trailing)
        }
        
        self.followingLabel.text = " FOLLOWING"
        self.followingLabel.font = UIFont(name: "HelveticaNeue-Light", size: followingLabel.font.pointSize)
        self.followingLabel.textColor = UIColor.lightGray

        
        self.followersNumber = UILabel(frame: .zero)
        self.outerContainerView.addSubview(self.followersNumber)
        self.followersNumber.snp.makeConstraints { (make) in
            make.top.equalTo(bio.snp.bottom).offset(ProfileView.padding)
            make.leading.equalTo(followingLabel.snp.trailing).inset(-ProfileView.padding)
        }

        self.followersNumber.text = "6,926"
        
        self.followersLabel = UILabel(frame: .zero)
        self.outerContainerView.addSubview(self.followersLabel)
        self.followersLabel.snp.makeConstraints { (make) in
            make.top.equalTo(bio.snp.bottom).offset(ProfileView.padding)
            make.leading.equalTo(followersNumber.snp.trailing)
        }
        
        self.followersLabel.text = " FOLLOWERS"
        self.followersLabel.font = UIFont(name: "HelveticaNeue-Light", size: followersLabel.font.pointSize)
        self.followersLabel.textColor = UIColor.lightGray
    }
}
