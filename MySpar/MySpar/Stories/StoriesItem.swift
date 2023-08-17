import SwiftUI

struct StoriesItem: Hashable {
    let image: UIImage
    let text: String
    static let examples = [
        StoriesItem(image: (UIImage(named: "StoriesImage") ?? UIImage(systemName: "camera"))!, text: "Медовый Спас"),
        StoriesItem(image: (UIImage(named: "StoriesImage2") ?? UIImage(systemName: "camera"))!, text: "Привилегии Moй SPAR"),
        StoriesItem(image: (UIImage(named: "StoriesImage2") ?? UIImage(systemName: "camera"))!, text: "Мы в соцсетях"),
        StoriesItem(image: (UIImage(named: "StoriesImage2") ?? UIImage(systemName: "camera"))!, text: "Дегустации в SPAR"),
        StoriesItem(image: (UIImage(named: "StoriesImage2") ?? UIImage(systemName: "camera"))!, text: "3 рецепта коктейлей")
        ]
}
