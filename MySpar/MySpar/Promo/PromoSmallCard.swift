import SwiftUI

struct PromoSmallCard {
    let image: UIImage
    let text: String
    static let example = PromoSmallCard(image: (UIImage(named: "PromoSmallImage") ?? UIImage(systemName: "camera"))!, text: "Абонемент на кофе")
}
