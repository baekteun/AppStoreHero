import Foundation

struct Today: Identifiable {
    var id = UUID().uuidString
    var appName: String
    var appDescription: String
    var appLogo: String
    var bannerTitle: String
    var platformTitle: String
    var artwork: String
}

extension Today {
    static let todayDummy: [Today] = [
        .init(
            appName: "LEGO Brawls",
            appDescription: "Battle with friends online",
            appLogo: "Logo1",
            bannerTitle: "Smash your rivals in LEGO Brawls",
            platformTitle: "Apple Arcade",
            artwork: "Post1"
        ),
        .init(
            appName: "Forza Horizon",
            appDescription: "Racing Game",
            appLogo: "Logo2",
            bannerTitle: "You're in charge of the Horizon Festival",
            platformTitle: "Apple Arcade",
            artwork: "Post2"
        )
    ]
}
