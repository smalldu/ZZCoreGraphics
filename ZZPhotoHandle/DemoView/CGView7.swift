//
//  CGView7.swift
//  ZZPhotoHandle
//
//  Created by duzhe on 16/2/28.
//  Copyright © 2016年 dz. All rights reserved.
//

import UIKit

class CGView7: UIView {

    //相信大家对比代码和显示效果并不难发现每种叠加的效果。例子中只是使用UIKit的封装方法进行叠加模式设置，更一般的方法当然是使用CGContextSetBlendMode(CGContextRef context, CGBlendMode mode)方法进行设置。
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        let rect0 = CGRectMake(0, 130.0, 320.0, 50.0)
        let rect1 = CGRectMake(0, 390.0, 320.0, 50.0)
        
        let rect2=CGRectMake(20, 50.0, 10.0, 250.0)
        let rect3=CGRectMake(40.0, 50.0, 10.0, 250.0)
        let rect4=CGRectMake(60.0, 50.0, 10.0, 250.0)
        let rect5=CGRectMake(80.0, 50.0, 10.0, 250.0)
        let rect6=CGRectMake(100.0, 50.0, 10.0, 250.0)
        let rect7=CGRectMake(120.0, 50.0, 10.0, 250.0)
        let rect8=CGRectMake(140.0, 50.0, 10.0, 250.0)
        let rect9=CGRectMake(160.0, 50.0, 10.0, 250.0)
        let rect10=CGRectMake(180.0, 50.0, 10.0, 250.0)
        let rect11=CGRectMake(200.0, 50.0, 10.0, 250.0)
        let rect12=CGRectMake(220.0, 50.0, 10.0, 250.0)
        let rect13=CGRectMake(240.0, 50.0, 10.0, 250.0)
        let rect14=CGRectMake(260.0, 50.0, 10.0, 250.0)
        let rect15=CGRectMake(280.0, 50.0, 10.0, 250.0)
        
        let rect16=CGRectMake(30.0, 310.0, 10.0, 250.0)
        let rect17=CGRectMake(50.0, 310.0, 10.0, 250.0)
        let rect18=CGRectMake(70.0, 310.0, 10.0, 250.0)
        let rect19=CGRectMake(90.0, 310.0, 10.0, 250.0)
        let rect20=CGRectMake(110.0, 310.0, 10.0, 250.0)
        let rect21=CGRectMake(130.0, 310.0, 10.0, 250.0)
        let rect22=CGRectMake(150.0, 310.0, 10.0, 250.0)
        let rect23=CGRectMake(170.0, 310.0, 10.0, 250.0)
        let rect24=CGRectMake(190.0, 310.0, 10.0, 250.0)
        let rect25=CGRectMake(210.0, 310.0, 10.0, 250.0)
        let rect26=CGRectMake(230.0, 310.0, 10.0, 250.0)
        let rect27=CGRectMake(250.0, 310.0, 10.0, 250.0)
        let rect28=CGRectMake(270.0, 310.0, 10.0, 250.0)
        let rect29=CGRectMake(290.0, 310.0, 10.0, 250.0)
        
        UIColor.yellowColor().set()
        UIRectFill(rect0)
        UIColor.greenColor().set()
        UIRectFill(rect1)
        UIColor.redColor().set()
        UIRectFillUsingBlendMode(rect2, CGBlendMode.Clear )
        UIRectFillUsingBlendMode(rect3, CGBlendMode.Color )
        UIRectFillUsingBlendMode(rect4, CGBlendMode.ColorBurn)
        UIRectFillUsingBlendMode(rect5, CGBlendMode.ColorDodge)
        UIRectFillUsingBlendMode(rect6, CGBlendMode.Copy)
        UIRectFillUsingBlendMode(rect7, CGBlendMode.Darken)
        UIRectFillUsingBlendMode(rect8, CGBlendMode.DestinationAtop)
        UIRectFillUsingBlendMode(rect9, CGBlendMode.DestinationIn)
        UIRectFillUsingBlendMode(rect10, CGBlendMode.DestinationOut)
        UIRectFillUsingBlendMode(rect11, CGBlendMode.DestinationOver)
        UIRectFillUsingBlendMode(rect12, CGBlendMode.Difference)
        UIRectFillUsingBlendMode(rect13, CGBlendMode.Exclusion)
        UIRectFillUsingBlendMode(rect14, CGBlendMode.HardLight)
        UIRectFillUsingBlendMode(rect15, CGBlendMode.Hue)
        UIRectFillUsingBlendMode(rect16, CGBlendMode.Lighten)
        
        UIRectFillUsingBlendMode(rect17, CGBlendMode.Luminosity)
        UIRectFillUsingBlendMode(rect18, CGBlendMode.Multiply)
        UIRectFillUsingBlendMode(rect19, CGBlendMode.Normal)
        UIRectFillUsingBlendMode(rect20, CGBlendMode.Overlay)
        UIRectFillUsingBlendMode(rect21, CGBlendMode.PlusDarker)
        UIRectFillUsingBlendMode(rect22, CGBlendMode.PlusLighter)
        UIRectFillUsingBlendMode(rect23, CGBlendMode.Saturation)
        UIRectFillUsingBlendMode(rect24, CGBlendMode.Screen)
        UIRectFillUsingBlendMode(rect25, CGBlendMode.SoftLight)
        UIRectFillUsingBlendMode(rect26, CGBlendMode.SourceAtop)
        UIRectFillUsingBlendMode(rect27, CGBlendMode.SourceIn)
        UIRectFillUsingBlendMode(rect28, CGBlendMode.SourceOut)
        UIRectFillUsingBlendMode(rect29, CGBlendMode.XOR)
        
    }
}
