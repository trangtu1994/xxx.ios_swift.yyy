//
//  MenuViewController.swift
//  DrawerMenu
//
//  Created by Trang Tu on 7/15/16.
//  Copyright © 2016 codebox. All rights reserved.
//

import UIKit

class MenuViewController : UIViewController{
    
    @IBOutlet weak var buttonClose: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("done")
    }
    
    private var supperController : UIViewController?
    var durationShowing = 0.3
    var isShowing = false
    var isFullScreen = true
    var isAnimationMoving = true
    var topMargin :CGFloat = 0.0
  
    private var width : CGFloat {
        return isFullScreen ? Device.width : Device.width / 2
    }
    
    private var height : CGFloat {
        return Device.height - topMargin
    }
    
    func initFrame() -> CGRect {
        return CGRectMake(-Device.width, 0 + topMargin , Device.width / 2, Device.height)
    }
    
    
    @IBAction func handleClose(sender: AnyObject) {
            close()
    }
    
    
    func show() {
        if !isShowing {
            let menuWidth = self.width
            let menuHeight = self.height
            let menuY = 0 + topMargin
            if isAnimationMoving {
                UIView.animateWithDuration(durationShowing, animations: { () -> Void in
               self.view.frame=CGRectMake(0, menuY , menuWidth , menuHeight )
                }, completion:nil)
            } else  {
                self.view.frame=CGRectMake(0, menuY , menuWidth , menuHeight )
            }
            isShowing = true
        }
    }
    
    
    func close() {
        if isShowing {
            if isAnimationMoving {
                UIView.animateWithDuration(durationShowing, animations: { () -> Void in
                    self.view.frame = self.initFrame()
                    }, completion:{(finished) -> Void in
                       
                    })
            } else  {
                self.view.frame = initFrame()
            }
            isShowing = false
        }
    }
    
    
    func removeFromSuper() {
        self.view.removeFromSuperview()
        self.removeFromParentViewController()
    }
    
    
    func addToSuper (controller : UIViewController) {
        supperController = controller
        controller.view.addSubview(self.view)
        controller.addChildViewController(self)
        self.view.frame = initFrame()
    }
}
