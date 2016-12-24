//
//  AtomFinderExtension
//  finder-extension
//
//  Created by Chris Dzombak on 12/23/16.
//  Copyright © 2016 Chris Dzombak. All rights reserved.
//

import Cocoa
import FinderSync

final class AtomFinderExtension: FIFinderSync {

    override var toolbarItemName: String {
        return "Atom"
    }
    
    override var toolbarItemToolTip: String {
        return "Open this directory in Atom"
    }
    
    override var toolbarItemImage: NSImage {
        return NSImage(named: "atom-icon")!
    }

    lazy var menu: NSMenu = {
        let result = NSMenu(title: "Atom")
        result.addItem(withTitle: "Open Directory in Atom", action: #selector(openInAtom(_:)), keyEquivalent: "")
        return result
    }()
    
    override func menu(for menuKind: FIMenuKind) -> NSMenu {
        return menu
    }
    
    @IBAction func openInAtom(_ sender: AnyObject?) {
        guard let target = FIFinderSyncController.default().targetedURL() else {
            print("[Error] No targeted URL provided")
            return
        }

        NSWorkspace.shared().openFile(target.path, withApplication: "Atom.app")
    }

}
