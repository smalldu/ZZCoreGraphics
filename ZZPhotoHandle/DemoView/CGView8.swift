//
//  CGView8.swift
//  ZZPhotoHandle
//
//  Created by duzhe on 16/2/28.
//  Copyright © 2016年 dz. All rights reserved.
//

import UIKit

class CGView8: UIView {

    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        let context = UIGraphicsGetCurrentContext()
        self.drawImage(context!)
    }
    /**
     平移旋转缩放
     
     - parameter context: 上下文对象
     */
    func drawImage(context:CGContextRef){
        //保存初始状态
        CGContextSaveGState(context);
        
        //形变第一步：图形上下文向右平移100
        CGContextTranslateCTM(context,100, 0);
        
        //形变第二步：缩放0.8
        CGContextScaleCTM(context, 0.8, 0.8);
        
        //形变第三步：旋转
        CGContextRotateCTM(context, CGFloat(M_PI_4)/4);
        let img = UIImage(named: "ddla")

        //从某一点开始绘制
        img?.drawAtPoint(CGPoint(x: 0, y: 100))
        
    }
}
