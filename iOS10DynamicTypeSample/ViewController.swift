//
//  ViewController.swift
//  iOS10DynamicTypeSample
//
//  Created by hiraya.shingo on 2016/10/12.
//  Copyright © 2016年 Shingo Hiraya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var subheadlineLabel: UILabel!
    @IBOutlet weak var footnoteLabel: UILabel!
    @IBOutlet weak var caption1Label: UILabel!
    @IBOutlet weak var caption2Label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // [1] フォントサイズではなく、UIFontTextStyle を指定
        self.headlineLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        self.bodyLabel.font = UIFont.preferredFont(forTextStyle: .body)
        self.subheadlineLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        self.footnoteLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
        self.caption1Label.font = UIFont.preferredFont(forTextStyle: .caption1)
        self.caption2Label.font = UIFont.preferredFont(forTextStyle: .caption2)
        
        // [2] adjustsFontForContentSizeCategory に true を指定
        self.headlineLabel.adjustsFontForContentSizeCategory = true
        self.bodyLabel.adjustsFontForContentSizeCategory = true
        self.subheadlineLabel.adjustsFontForContentSizeCategory = true
        self.footnoteLabel.adjustsFontForContentSizeCategory = true
        self.caption1Label.adjustsFontForContentSizeCategory = true
        self.caption2Label.adjustsFontForContentSizeCategory = true
        
        // 不要
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(ViewController.preferredContentSizeChanged),
//                                               name: .UIContentSizeCategoryDidChange,
//                                               object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     // 不要
//    func preferredContentSizeChanged(notification: Notification) {
//        print("preferredContentSizeChanged")
//    }
}
