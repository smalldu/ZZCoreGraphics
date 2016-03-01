//
//  CGView2.swift
//  ZZPhotoHandle
//
//  Created by duzhe on 16/2/28.
//  Copyright © 2016年 dz. All rights reserved.
//

import UIKit

class CGView2: UIView {

    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        // 1、 获取上下文对象
        let context = UIGraphicsGetCurrentContext()
        
        // 2、 绘制路径（相当于前面创建路径并添加路径到图形上下文两步操作）
        CGContextMoveToPoint(context, 10, 30)
        CGContextAddLineToPoint(context, 10, 100)
        CGContextAddLineToPoint(context, 150, 100)

        //封闭路径:直接调用路径封闭方法
        CGContextClosePath(context)
        
        // 3、 设置图形上下文属性
        UIColor.redColor().setStroke()
        UIColor.yellowColor().setFill()
        
        // 4、 绘制路径
        CGContextDrawPath(context, CGPathDrawingMode.FillStroke)
        
    }
    
}
