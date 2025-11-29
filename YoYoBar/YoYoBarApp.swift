//
//  YoYoBarApp.swift
//  YoYoBar
//
//  Created by Ankur Taxali on 2025-11-29.
//

import SwiftUI
import AppKit

@main
struct YoYoBarApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        // Empty - no windows, no settings
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        // Create the status bar item
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
        
        if let button = statusItem?.button {
            // Set the custom icon from Assets.xcassets
            if let customIcon = NSImage(named: "MenuBarIcon") {
                // Configure the icon for menu bar display
                customIcon.size = NSSize(width: 16, height: 16)
                customIcon.isTemplate = true
                button.image = customIcon
            } else {
                // Fallback to system icon if custom icon not found
                button.image = NSImage(systemSymbolName: "star.fill", accessibilityDescription: "YoYoBar")
            }
            // NO ACTION - nothing happens when clicked
        }
        
        // Hide dock icon and main window
        NSApp.setActivationPolicy(.accessory)
    }
}
