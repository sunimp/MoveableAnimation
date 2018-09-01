//
//  AnimationOptions.swift
//  MoveableAnimation
//
//  Created by Sun on 2018/9/1.
//  Copyright © 2018年 Sun. All rights reserved.
//

import Foundation

public enum Direction {
    case left
    case right
    
    init(selectedIndex: Int, shouldSelectIndex: Int) {
        self = selectedIndex > shouldSelectIndex ? .left : .right
    }
}

public enum TransitionViewType: Int {
    case to
    case from
}
