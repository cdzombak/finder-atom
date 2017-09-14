//
//  ViewController.swift
//  finder-atom
//
//  Created by Chris Dzombak on 12/23/16.
//  Copyright © 2016 Chris Dzombak. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBAction func openSystemPreferences(_ sender: AnyObject?) {
        if !NSWorkspace.shared().open(URL(fileURLWithPath: "/System/Library/PreferencePanes/Extensions.prefPane")) {
            NSLog("[Error] Failed to open Extensions preference pane")
        }
    }

}
