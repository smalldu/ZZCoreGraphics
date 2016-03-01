//
//  ViewController.swift
//  ZZPhotoHandle
//
//  Created by duzhe on 16/2/28.
//  Copyright © 2016年 dz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CoreGraphics Demo"
        
        // Do any additional setup after loading the view, typically from a nib.
        let cgView = CGView(frame:CGRectMake(0,44,160,110) )
        cgView.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(cgView)
        
        let cgView2 = CGView2(frame:CGRectMake(160,44,160,110))
        cgView2.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(cgView2)
        
        let cgView3 = CGView3(frame:CGRectMake(0,164,self.view.frame.size.width,self.view.frame.size.height - 110))
        cgView3.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(cgView3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

