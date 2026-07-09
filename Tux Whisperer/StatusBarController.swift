import Cocoa

class StatusBarController: NSObject {
    private var statusItem: NSStatusItem
    private let notifier: Notifier
    
    init(notifier: Notifier) {
        self.notifier = notifier
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusItem.isVisible = true
        super.init()
        
        if let button = statusItem.button {
            button.image = NSImage(named: "TuxIcon")
            //button.image = NSImage(systemSymbolName: "star.fill", accessibilityDescription: nil)
            button.image?.isTemplate = false
        }
        
        let menu = NSMenu()
        let sendNowItem = NSMenuItem(
            title: "Envoyer un message maintenant",
            action: #selector(sendNow),
            keyEquivalent: ""
        )
        sendNowItem.target = self
        menu.addItem(sendNowItem)
        
        statusItem.menu = menu
    }
    
    @objc func sendNow() {
        notifier.sendRandomNotification()
    }
}
