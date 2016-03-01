//
//  CGView3.swift
//  ZZPhotoHandle
//
//  Created by duzhe on 16/2/28.
//  Copyright © 2016年 dz. All rights reserved.
//

import UIKit

class CGView3: UIView {

    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        // 1、 获取上下文对象
        let context = UIGraphicsGetCurrentContext()
        //画矩形
        self.drawRectWithContext(context!)
        //画矩形 用uikit封装的方法
        self.drawRectByUIKitWithContext(context!)
        //画椭圆 宽高一样就是正圆
        self.drawEllipse(context!)
        //画弧形
        self.drawArc(context!)
        //绘制 二次三次贝塞尔曲线
        self.drawCurve(context!)
    }
    
    /**
     画矩形
     
     - parameter context: 上下文对象
     */
    func drawRectWithContext(context:CGContextRef){
        let rect = CGRectMake(20, 0 , 280, 50)
        CGContextAddRect(context, rect)
        UIColor.blueColor().set()
        CGContextDrawPath(context, CGPathDrawingMode.FillStroke)
    }
    
    /**
     画矩形 用uikit封装的方法
     
     - parameter context: 上下文对象
     */
    func drawRectByUIKitWithContext(context:CGContextRef){
        let rect = CGRectMake(20, 60, 280.0, 50.0)
        let rect2 = CGRectMake(20, 120, 280.0, 50.0)
        
        UIColor.yellowColor().set()
        UIRectFill(rect)
        
        UIColor.redColor().setFill()
        UIRectFill(rect2)
    }
    
    /**
     画椭圆 宽高一样就是正圆
     
     - parameter context: 上下文对象
     */
    func drawEllipse(context:CGContextRef){
        let rect = CGRectMake(20, 180 ,100,120)
        
        CGContextAddEllipseInRect(context, rect)
        UIColor.purpleColor().set()
        CGContextDrawPath(context, CGPathDrawingMode.Fill)
    }
    
    /**
     创建弧形
     
     - parameter context: 上下文对象
     */
    func drawArc(context:CGContextRef){
        /*
        添加弧形对象
        x:中心点x坐标
        y:中心点y坐标
        radius:半径
        startAngle:起始弧度
        endAngle:终止弧度
        closewise:是否逆时针绘制，0则顺时针绘制
        */
        CGContextAddArc(context, 200, 250 , 50 , 0 , CGFloat(M_PI) , 0)
        UIColor.greenColor().set()
        CGContextDrawPath(context, CGPathDrawingMode.Fill)
    }
    
    /**
     绘制贝塞尔曲线
     
     - parameter context: 上下文对象
     */
    func drawCurve(context:CGContextRef){
        //绘制曲线
        CGContextMoveToPoint(context, 20, 310) //移动到起始位置
        /*
        绘制二次贝塞尔曲线
        c:图形上下文
        cpx:控制点x坐标
        cpy:控制点y坐标
        x:结束点x坐标
        y:结束点y坐标
        */
        CGContextAddQuadCurveToPoint(context, 220, 310 , 100, 400)
        
        CGContextMoveToPoint(context, 230, 310)
        /*绘制三次贝塞尔曲线
        c:图形上下文
        cp1x:第一个控制点x坐标
        cp1y:第一个控制点y坐标
        cp2x:第二个控制点x坐标
        cp2y:第二个控制点y坐标
        x:结束点x坐标
        y:结束点y坐标
        */
        CGContextAddCurveToPoint(context, 100 , 330, 400, 410, 300, 500);
        
        UIColor.yellowColor().setFill()
        UIColor.redColor().setStroke()
        CGContextDrawPath(context, CGPathDrawingMode.FillStroke)
    }
    
}
