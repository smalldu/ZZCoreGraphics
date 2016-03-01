//
//  ForthViewController.swift
//  ZZPhotoHandle
//
//  Created by duzhe on 16/2/28.
//  Copyright © 2016年 dz. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let ctView = CGView7(frame:CGRectMake(0,64,self.view.frame.width,self.view.frame.height))
        self.view.addSubview(ctView)
        ctView.backgroundColor = UIColor.whiteColor()
    }
    
}
