import Cocoa
import UserNotifications

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusBarController: StatusBarController?
    let notifier = Notifier()
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, error in if let error = error {
            print("Erreur permission notifications: \(error)")
        }
    }
        
        statusBarController = StatusBarController(notifier: notifier)
        
        Timer.scheduledTimer(withTimeInterval: 30, repeats: true) {_ in self.notifier.sendRandomNotification()
        }
    }
    
    func applicationWillTerminate(_ notification: Notification) {}
}
