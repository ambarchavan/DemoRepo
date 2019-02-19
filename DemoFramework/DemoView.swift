//
//  DemoView.swift
//  DemoFramework
//
//  Created by Macbook on 19/02/19.
//

import UIKit


public class DemoView : UIView {
    public let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    public var colorCounter = 0
    
    public override init(frame: CGRect) {
        super.init(frame: frame)

        if #available(iOS 10.0, *) {
            let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in  //1
                UIView.animate(withDuration: 2.0) {  //2
                    self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor  //3
                    self.colorCounter+=1  //4
                }
                
            }
            scheduledColorChanged.fire()
        } else {
            // Fallback on earlier versions
        }
        
        
        // The Main Stuff
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // You don't need to implement this
    }
}

