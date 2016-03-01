//
//  CGView9.swift
//  ZZPhotoHandle
//
//  Created by duzhe on 16/2/28.
//  Copyright © 2016年 dz. All rights reserved.
//

import UIKit

class CGView9: UIView {
    
//    在前面基本绘图部分，绘制图像时使用了UIKit中封装的方法进行了图像绘制，我们不妨看一下使用Quartz 2D内置方法绘制是什么效果。
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        let context = UIGraphicsGetCurrentContext()
        self.drawImage2(context!)
    }
    func drawImage2(context:CGContextRef){
        let image = UIImage(named: "ddla")
        
        let size = UIScreen.mainScreen().bounds.size
        CGContextSaveGState(context)
        let height:CGFloat = 450
        let y:CGFloat = 50
        //图像绘制
        let rect = CGRectMake(10, y, 300, height)
        
//        在Core Graphics中坐标系的y轴正方向是向上的，坐标原点在屏幕左下角，y轴方向刚好和UIKit中y轴方向相反
        CGContextScaleCTM(context, 1.0, -1.0) //在y轴缩放-1相当于沿着x张旋转180
        CGContextTranslateCTM(context, 0, -(size.height-(size.height-2*y-height))) //向上平移
        CGContextDrawImage(context, rect, image?.CGImage)
        
    }
    
}
