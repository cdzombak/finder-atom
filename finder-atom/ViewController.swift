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
        guard let prefsURL = URL(string: "x-apple.systempreferences:") else {
            fatalError("Couldn't build prefs URL")
        }

        NSWorkspace.shared().open(prefsURL)
    }

}
