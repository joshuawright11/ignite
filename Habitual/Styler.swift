//
//  Styler.swift
//  Ignite
//
//  Created by Josh Wright on 11/9/15.
//  Copyright © 2015 Josh Wright. All rights reserved.
//

import Foundation

// -TODO: Needs refactoring/documentation

public class Styler: NSObject {
    
//    public static func styleTitleLabel(label: UILabel) {
//        label.textColor = Colors.textMain
//        label.font = Fonts.monthLabel
//    }
    
    public static func navBarShader(vc: UIViewController) {
        vc.navigationController?.navigationBar.shadowImage = UIImage()
        vc.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarPosition: .Any, barMetrics: .Default)
        vc.navigationController?.navigationBar.layer.shadowColor = Colors.shadow.CGColor
        vc.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 1.5)
        vc.navigationController?.navigationBar.layer.shadowRadius = 2
        vc.navigationController?.navigationBar.layer.shadowOpacity = 0.4
    }
    
    public static func viewBottomShader(view: UIView) {
        
        view.layer.shadowColor = Colors.shadow.CGColor
        view.layer.shadowOffset = CGSize(width: 0, height: 2.75)
        view.layer.shadowRadius = 1.75
        view.layer.shadowOpacity = 0.4
    }
    
    public static func tabBarShader(tabBar: UITabBar) {
        tabBar.layer.shadowColor = Colors.shadow.CGColor
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -1.5)
        tabBar.layer.shadowRadius = 2
        tabBar.layer.shadowOpacity = 0.4
        
        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage()
    }
    
    public static func viewShader(view: UIView) {
        view.layer.shouldRasterize = true;
        view.layer.rasterizationScale = UIScreen.mainScreen().scale
        view.layer.shadowColor = Colors.shadow.CGColor
        view.layer.shadowOffset = CGSize(width: 0, height: 3)
        view.layer.shadowRadius = 3
        view.layer.shadowOpacity = 0.6
    }
    
    public static func viewShaderSmall(view: UIView) {
        view.layer.shouldRasterize = true;
        view.layer.rasterizationScale = UIScreen.mainScreen().scale
        view.layer.shadowColor = Colors.shadow.CGColor
        view.layer.shadowOffset = CGSize(width: 0, height: 1)
        view.layer.shadowRadius = 1
        view.layer.shadowOpacity = 0.6
    }
}
