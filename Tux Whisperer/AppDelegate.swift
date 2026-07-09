import Cocoa
import UserNotifications
import ServiceManagement

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusBarController: StatusBarController?
    let notifier = Notifier()

    func applicationDidFinishLaunching(_ notification: Notification) {
        NSApp.setActivationPolicy(.accessory)

        // Demande de permission pour les notifications
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, error in
            if let error = error {
                print("Erreur permission notifications : \(error)")
            }
        }

        // Enregistrement au lancement automatique
        do {
            try SMAppService.mainApp.register()
        } catch {
            print("Impossible d'enregistrer le lancement automatique : \(error)")
        }

        statusBarController = StatusBarController(notifier: notifier)

        Timer.scheduledTimer(withTimeInterval: 30, repeats: true) { _ in
            self.notifier.sendRandomNotification()
        }
    }

    func applicationWillTerminate(_ notification: Notification) {}
}
