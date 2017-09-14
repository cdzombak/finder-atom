//
//  AppDelegate.swift
//  finder-atom
//
//  Created by Chris Dzombak on 12/23/16.
//  Copyright © 2016 Chris Dzombak. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NSLog("Main app is running")
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

}
