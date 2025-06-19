//
//  Contacts.swift
//  trial-1237
//
//  Created by ABHINAV ANAND  on 19/06/25.
//


import SwiftUI
import FirebaseCore

// This class acts as the delegate for our application.
// It's the best place to put setup code that needs to run once when the app starts.
// Think of it as the "ignition switch" for our app's services.
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    // This is the line that connects our app to the Firebase project.
    // It reads the GoogleService-Info.plist file you added.
    FirebaseApp.configure()
    print("Firebase configured successfully!") // Good for debugging
    return true
  }
}

// @main is the entry point for the application.
// This is where the app launches and our UI begins.
@main
struct ContactsApp: App {
  // We use this property wrapper to tell SwiftUI to use our AppDelegate class
  // for application-level events.
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

  var body: some Scene {
    WindowGroup {
        // For now, we'll just show a simple text view.
        // We will replace this with our LoginView in the next step.
        LoginView()
    }
  }
}
