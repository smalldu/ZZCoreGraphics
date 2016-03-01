//
//  CGView4.swift
//  ZZPhotoHandle
//
//  Created by duzhe on 16/2/28.
//  Copyright © 2016年 dz. All rights reserved.
//

import UIKit

class CGView4: UIView {

    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        let context = UIGraphicsGetCurrentContext()
        
        //文字绘制
        self.drawText(context!)
        //图像绘制
        self.drawImage(context!)
    }
    
    
    /**
     文字绘制
     
     - parameter context: 上下文对象
     */
    func drawText(context:CGContextRef){
        let str = "使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制使用CoreGraphics进行文字绘制"
        let rect = CGRectMake(20, 20, 280, 200)
        let font = UIFont.systemFontOfSize(16)
        let color = UIColor.redColor()
        let style = NSMutableParagraphStyle()
        style.alignment = NSTextAlignment.Left
        (str as NSString).drawInRect(rect, withAttributes: [NSFontAttributeName:font,NSForegroundColorAttributeName:color,NSParagraphStyleAttributeName:style])
        
    }
    
    /**
     图像绘制
     
     - parameter context: 上下文对象
     */
    func drawImage(context:CGContextRef){
    
        let img = UIImage(named: "ddla")
        //绘制到指定的矩形中，注意如果大小不合适会会进行拉伸
        img?.drawInRect(CGRectMake(0, 200, 100, 80))
        //从某一点开始绘制
        img?.drawAtPoint(CGPoint(x: 0, y: 320))
        
    }
    
}
