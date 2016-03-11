//
//  ViewController.swift
//  Twitter Timeline
//
//  Created by Lucas Costa Oliveira on 3/10/16.
//  Copyright © 2016 Lucas Costa Oliveira. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: TWTRTimelineViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let client = TWTRAPIClient()
        self.dataSource = TWTRUserTimelineDataSource(screenName: "l_costao", APIClient: client)
        
        TWTRTweetView.appearance().primaryTextColor = UIColor.redColor()
        
        TWTRTweetView.appearance().backgroundColor = UIColor.darkGrayColor()
    }

}

