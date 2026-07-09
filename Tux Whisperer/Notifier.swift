import Foundation
import UserNotifications

class Notifier {
    let message = [
        "test"
    ]
    
    func sendRandomNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Tux Whisperer"
        content.body = message.randomElement() ?? "Linux > macOS"
        content.sound = .default
        
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: nil
        )
        
        UNUserNotificationCenter.current().add(request)
    }
}
