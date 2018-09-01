//
//  AnimationMaker.swift
//  MoveableAnimation
//
//  Created by Sun on 2018/9/1.
//  Copyright © 2018年 Sun. All rights reserved.
//

import UIKit

// MARK: - 动画类型
enum AnimationType: String {
    case opacity
    case translation = "transform.translation.x"
    
    func animation<T>(from: T, to: T) -> CABasicAnimation {
        let animation = CABasicAnimation(keyPath: rawValue)
        animation.fromValue = from
        animation.toValue = to
        return animation
    }
}


// MARK: - 动画生成类
class AnimationMaker {

    static func makeAnimation<T>(type: AnimationType, from: T, to: T) -> CAAnimation {
        let animation = type.animation(from: from, to: to)
        return animation
    }
    
    static func makeGroupAnimation(_ animations: [CAAnimation]) -> CAAnimationGroup {
        let group = CAAnimationGroup()
        group.animations = animations
        return group
    }
}
