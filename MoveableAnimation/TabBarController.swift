//
//  TabBarController.swift
//  MoveableAnimation
//
//  Created by Sun on 2018/9/1.
//  Copyright © 2018年 Sun. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewControllers?.compactMap{ ($0 as? UINavigationController)?.visibleViewController }.forEach {
            
            let searchBar = UISearchBar(frame: .zero)
            if #available(iOS 11.0, *) {
                searchBar.heightAnchor.constraint(equalToConstant: 44).isActive = true
            }
            searchBar.searchBarStyle = .prominent
            searchBar.placeholder = "Search"
            $0.navigationItem.titleView = searchBar
            
            $0.navigationController?.navigationBar.isTranslucent = false
            $0.navigationController?.navigationBar.tintColor = UIColor.white
            $0.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.2588235294, green: 0.4039215686, blue: 0.7019607843, alpha: 1)
            
        }
    }


}


extension TabBarController: MoveableAnimation {
    
    func transitionDuration() -> CFTimeInterval {
        return 0.4
    }
    
    func transitionTimingFunction() -> CAMediaTimingFunction {
        return .easeInOut
    }
    
    func fromTransitionAnimation(layer: CALayer, direction: Direction) -> CAAnimation {
        return DefineAnimation.move(.from, direction: direction)
    }
    
    func toTransitionAnimation(layer: CALayer, direction: Direction) -> CAAnimation {
        return DefineAnimation.move(.to, direction: direction)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return animateTransition(tabBarController, shouldSelect: viewController)
    }
}
