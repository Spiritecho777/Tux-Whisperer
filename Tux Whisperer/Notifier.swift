import Foundation
import UserNotifications

class Notifier {
    let message = [
        NSLocalizedString("notice_1", comment: ""),
        NSLocalizedString("notice_2", comment: ""),
        NSLocalizedString("notice_3", comment: ""),
        NSLocalizedString("notice_4", comment: ""),
        NSLocalizedString("notice_5", comment: ""),
        NSLocalizedString("notice_6", comment: ""),
        NSLocalizedString("notice_7", comment: ""),
        NSLocalizedString("notice_8", comment: ""),
        NSLocalizedString("notice_9", comment: ""),
        NSLocalizedString("notice_10", comment: ""),
        NSLocalizedString("notice_11", comment: ""),
        NSLocalizedString("notice_12", comment: ""),
        NSLocalizedString("notice_13", comment: ""),
        NSLocalizedString("notice_14", comment: ""),
        NSLocalizedString("notice_15", comment: ""),
        NSLocalizedString("notice_16", comment: ""),
        NSLocalizedString("notice_17", comment: ""),
        NSLocalizedString("notice_18", comment: ""),
        NSLocalizedString("notice_19", comment: ""),
        NSLocalizedString("notice_20", comment: ""),
        NSLocalizedString("notice_21", comment: ""),
        NSLocalizedString("notice_22", comment: ""),
        NSLocalizedString("notice_23", comment: ""),
        NSLocalizedString("notice_24", comment: ""),
        NSLocalizedString("notice_25", comment: ""),
        NSLocalizedString("notice_26", comment: ""),
        NSLocalizedString("notice_27", comment: ""),
        NSLocalizedString("notice_28", comment: ""),
        NSLocalizedString("notice_29", comment: ""),
        NSLocalizedString("notice_30", comment: ""),
        NSLocalizedString("notice_31", comment: ""),
        NSLocalizedString("notice_32", comment: ""),
        NSLocalizedString("notice_33", comment: ""),
        NSLocalizedString("notice_34", comment: ""),
        NSLocalizedString("notice_35", comment: ""),
        NSLocalizedString("notice_36", comment: ""),
        NSLocalizedString("notice_37", comment: ""),
        NSLocalizedString("notice_38", comment: ""),
        NSLocalizedString("notice_39", comment: ""),
        NSLocalizedString("notice_40", comment: ""),
        NSLocalizedString("notice_41", comment: ""),
        NSLocalizedString("notice_42", comment: ""),
        NSLocalizedString("notice_43", comment: ""),
        NSLocalizedString("notice_44", comment: ""),
        NSLocalizedString("notice_45", comment: ""),
        NSLocalizedString("notice_46", comment: ""),
        NSLocalizedString("notice_47", comment: ""),
        NSLocalizedString("notice_48", comment: ""),
        NSLocalizedString("notice_49", comment: ""),
        NSLocalizedString("notice_50", comment: ""),
        NSLocalizedString("notice_51", comment: ""),
        NSLocalizedString("notice_52", comment: ""),
        NSLocalizedString("notice_53", comment: ""),
        NSLocalizedString("notice_54", comment: ""),
        NSLocalizedString("notice_55", comment: "")
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
