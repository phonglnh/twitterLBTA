//
//  HomeDataSourceController+navbar.swift
//  TwitterLBTA
//
//  Created by PhongLe on 4/19/17.
//  Copyright © 2017 PhongLe. All rights reserved.
//

import UIKit

extension HomeDataSourceController {
    
    func setupNavigationBarItems() {
        setupRemainingNavItems()
        setupLeftNavItems()
        setupRightNavItems()
    }
    
    private func setupRemainingNavItems() {
        let titleImageView = UIImageView(image: UIImage(named: "title_icon"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = titleImageView
        
        navigationController?.navigationBar.backgroundColor = UIColor.white
        navigationController?.navigationBar.isTranslucent = false
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeparatorView = UIView()
        navBarSeparatorView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        view.addSubview(navBarSeparatorView)
        navBarSeparatorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
        
    }
    
    private func setupLeftNavItems() {
        let followButton = UIButton(type: .system)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        followButton.setImage(UIImage(named: "follow")?.withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.contentMode = .scaleAspectFit
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
    }
    
    private func setupRightNavItems() {
        let searchButton = UIButton(type: .system)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        searchButton.setImage(UIImage(named:"search")?.withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.contentMode = .scaleAspectFit
        
        let composeButton = UIButton(type: .system)
        composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        composeButton.setImage(#imageLiteral(resourceName: "compose").withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.contentMode = .scaleAspectFit
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: searchButton), UIBarButtonItem(customView: composeButton)]
    }

}
