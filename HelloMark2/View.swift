//
//  View.swift
//  HelloMark2
//
//  Created by edwin vazquez on 12/7/14.
//  Copyright (c) 2014 A Perfect Empire. All rights reserved.
//

import UIKit

class View: UIView {

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		backgroundColor = UIColor.blueColor();
	}
	
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
	
	override func drawRect(rect: CGRect) {
	 	let s: String = "שלום עולם!";
		let font: UIFont = UIFont.systemFontOfSize(32);
		let attributes: [NSObject: AnyObject] = [NSFontAttributeName: font];
		let screen: UIScreen = UIScreen.mainScreen();
		let applicationFrame: CGRect = screen.applicationFrame;
		let size: CGSize = s.sizeWithAttributes(attributes);
		let x: CGFloat = bounds.origin.x + (bounds.size.width - size.width) / 2;
		let y: CGFloat = bounds.origin.y + (bounds.size.height - size.height) / 2;
		let point: CGPoint = CGPointMake(x, y);
		s.drawAtPoint(point, withAttributes: attributes);

}

}