//
//  ViewController.swift
//  IndicatorSample
//
//  Created by KumagaiNaoki on 2016/05/18.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//


import UIKit
import SVProgressHUD

class ViewController: UIViewController {
    
    var indicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tapAppleButton(sender: UIButton) {
        addAppleIndicator()
    }
    
    func addAppleIndicator() {
        indicator = UIActivityIndicatorView()
        indicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        indicator.center = self.view.center
        indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        indicator.startAnimating()
        self.view.addSubview(indicator)
    }
    
    @IBAction func tapSVProgressHUDButton(sender: UIButton) {
        addSVProgressHUD()
    }
    
    func addSVProgressHUD() {
        //        SVProgressHUD.show()
        //        SVProgressHUD.showWithStatus("読み込み中")
        //        SVProgressHUD.showSuccessWithStatus("成功！")//消える
        SVProgressHUD.show()
        //        SVProgressHUD.setDefaultAnimationType(SVProgressHUDAnimationType.Native)
        //        SVProgressHUD.setDefaultMaskType(SVProgressHUDMaskType.Black)
        SVProgressHUD.setDefaultStyle(.Dark)
    }
    
    @IBAction func tapStopButton(sender: UIButton) {
        indicator.stopAnimating()
        
        SVProgressHUD.dismiss()
    }
}

