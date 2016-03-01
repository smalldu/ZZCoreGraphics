//
//  ThirdViewController.swift
//  ZZPhotoHandle
//
//  Created by duzhe on 16/2/28.
//  Copyright © 2016年 dz. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let ctView = CGView5(frame:CGRectMake(0,64,self.view.frame.width,100))
        ctView.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(ctView)
        
        let ctView1 = CGView6(frame:CGRectMake(0,100,self.view.frame.width,self.view.frame.height-100))
        ctView1.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(ctView1)
    }
    
}
