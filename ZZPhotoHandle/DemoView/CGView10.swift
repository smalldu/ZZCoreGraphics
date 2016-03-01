//
//  CGView10.swift
//  ZZPhotoHandle
//
//  Created by duzhe on 16/3/1.
//  Copyright © 2016年 dz. All rights reserved.
//

import UIKit

class CGView10: UIView {

    var path:String!
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        let context = UIGraphicsGetCurrentContext()
        CGContextTranslateCTM(context, 0.0, self.bounds.size.height)
        CGContextScaleCTM(context, 1.0, -1.0)
        let url = NSURL(fileURLWithPath: path) as CFURLRef
        let pdf = CGPDFDocumentCreateWithURL(url)
        let page = CGPDFDocumentGetPage(pdf, 1)
        CGContextSaveGState(context)
        
//        let pdfTransform = CGPDFPageGetDrawingTransform(page, CGPDFBox.CropBox, self.bounds, 0, true)
//        CGContextConcatCTM(context, pdfTransform)

        CGContextDrawPDFPage(context, page);
        CGContextRestoreGState(context);
    }
 
    
    
}
