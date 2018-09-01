//
//  TimingFunctionExtension.swift
//  MoveableAnimation
//
//  Created by Sun on 2018/9/1.
//  Copyright © 2018年 Sun. All rights reserved.
//

import UIKit

// MARK: - CAMediaTimingFunction 扩展
public extension CAMediaTimingFunction {
    
    static let linear = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
    
    static let easeIn = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
    
    static let easeOut = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
    
    static let easeInOut = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
}
