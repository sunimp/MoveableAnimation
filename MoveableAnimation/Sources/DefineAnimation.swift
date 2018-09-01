//
//  DefineAnimation.swift
//  MoveableAnimation
//
//  Created by Sun on 2018/9/1.
//  Copyright © 2018年 Sun. All rights reserved.
//

import UIKit


// MARK: - 动画定义
public struct DefineAnimation {
    
    public static func fade(_ type: TransitionViewType, min: CGFloat = 0, max: CGFloat = 1) -> CAAnimation {
        let fromOpacity = type == .from ? max : min
        let toOpacity = type == .to ? max : min
        return AnimationMaker.makeAnimation(type: .opacity, from: fromOpacity, to: toOpacity)
    }
    
    public static func move(_ type: TransitionViewType, direction: Direction, bounceValue: CGFloat = 30) -> CAAnimation {
        let fromX = direction == .right ? bounceValue : -bounceValue
        let toX = direction == .left ? bounceValue : -bounceValue
        let opacity = fade(type)
        let translatation = type == .from ? AnimationMaker.makeAnimation(type: .translation, from: 0, to: toX) : AnimationMaker.makeAnimation(type: .translation, from: fromX, to: 0)
        return AnimationMaker.makeGroupAnimation([opacity, translatation])
    }
}
