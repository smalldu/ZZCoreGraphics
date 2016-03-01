//
//  SeventhViewController.swift
//  ZZPhotoHandle
//
//  Created by duzhe on 16/3/1.
//  Copyright © 2016年 dz. All rights reserved.
//

import UIKit

class SeventhViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = self.drawImageAtImageContext()
        let imageView = UIImageView(image: image)
        imageView.center=CGPointMake(160, 284)
        
        self.view.addSubview(imageView)
    }
    
    func drawImageAtImageContext()->UIImage{
        // 获得一个位图图形上下文
        let size = CGSizeMake(300, 200)
        UIGraphicsBeginImageContext(size)
        
        let img = UIImage(named: "ddla")
        img?.drawInRect(CGRectMake(0, 0, 300, 200))//注意绘图的位置是相对于画布顶点而言，不是屏幕
        
        //添加水印
        let context = UIGraphicsGetCurrentContext()
        CGContextMoveToPoint(context, 200, 178)
        CGContextAddLineToPoint(context, 265, 178)
        
        UIColor.redColor().setStroke()
        CGContextSetLineWidth(context, 2)
        CGContextDrawPath(context, CGPathDrawingMode.Stroke)
        
        let str = "ZUBER"
        (str as NSString).drawInRect(CGRectMake(200, 158, 100, 30), withAttributes: [NSFontAttributeName:UIFont.boldSystemFontOfSize(18),NSForegroundColorAttributeName:UIColor.redColor()])
        //返回绘制的新图形
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        
        //保存图片
//        let data = UIImagePNGRepresentation(newImage)
//        data?.writeToFile("your_path", atomically: true)
        
        //不要忘记关闭对应上下文
        UIGraphicsEndImageContext()
        
        return newImage
    }
    
//    注意：上面这种方式绘制的图像除了可以显示在界面上还可以调用对应方法进行保存（代码注释中已经包含保存方法）；除此之外这种方法相比在drawRect：方法中绘制图形效率更高，它不用每次展示时都调用所有图形绘制方法。
    
}
