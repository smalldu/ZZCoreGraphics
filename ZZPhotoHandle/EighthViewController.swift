//
//  EighthViewController.swift
//  ZZPhotoHandle
//
//  Created by duzhe on 16/3/1.
//  Copyright © 2016年 dz. All rights reserved.
//

import UIKit

class EighthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.drawContentToPdfContext()
    }
    
    func drawContentToPdfContext(){
    
        //沙盒路径（也就是我们应用程序文件运行的路径）
        let paths = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentationDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        
        let path = (paths.first! as NSString).stringByAppendingPathComponent("test.pdf")
        NSFileManager.defaultManager().createFileAtPath(path, contents: nil, attributes: nil)
      
        //启用pdf图形上下文
        /**
        path:保存路径
        bounds:pdf文档大小，如果设置为CGRectZero则使用默认值：612*792
        pageInfo:页面设置,为nil则不设置任何信息
        */
        UIGraphicsBeginPDFContextToFile(path, CGRectZero, nil)
//        [kCGPDFContextAuthor:"ZUBER"]
        //由于pdf文档是分页的，所以首先要创建一页画布供我们绘制
        UIGraphicsBeginPDFPage()
        
        let title = "开心的学习 CoreGraphics 开心的学习Swift"
        let style = NSMutableParagraphStyle()
        style.alignment = NSTextAlignment.Center
        (title as NSString).drawInRect(CGRectMake(26, 20, 300, 50) , withAttributes: [NSFontAttributeName:UIFont.boldSystemFontOfSize(18),NSParagraphStyleAttributeName:style])
        
        let content = "Learn about Apple products, view online manuals, get the latest downloads, and more. Connect with other Apple users, or get service, support, and professional advice from Apple."
        let style2 = NSMutableParagraphStyle()
        style2.alignment = NSTextAlignment.Left
        (content as NSString).drawInRect(CGRectMake(26, 56, 300, 255) , withAttributes: [NSFontAttributeName:UIFont.systemFontOfSize(15),NSParagraphStyleAttributeName:style2,NSForegroundColorAttributeName:UIColor.grayColor()])
        
        let img = UIImage(named: "ddla")
        img?.drawInRect(CGRectMake(316, 20, 290, 305))
        
        let img2 = UIImage(named: "ddla")
        img2?.drawInRect(CGRectMake(6, 320, 600, 281))
        
        //创建新的一页继续绘制
        UIGraphicsBeginPDFPage()
        let img3 = UIImage(named: "ddla")
        img3?.drawInRect(CGRectMake(6, 20, 600, 629))
        
        //结束pdf上下文
        UIGraphicsEndPDFContext()
        
        let scrollView = UIScrollView()
        scrollView.frame = CGRectMake(0,64,self.view.frame.width,self.view.frame.height-64)
        scrollView.contentSize = CGSizeMake(self.view.frame.width+200,800)
        //把pdf显示在view上
        let ctView = CGView10(frame:CGRectMake(0,64,self.view.frame.width+200,800))
        ctView.path = path
        scrollView.addSubview(ctView)
        self.view.addSubview(scrollView)
        ctView.backgroundColor = UIColor.whiteColor()
       
    }
    
}
