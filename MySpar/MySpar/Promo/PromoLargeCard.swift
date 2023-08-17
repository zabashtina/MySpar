import SwiftUI

struct PromoLargeCard {
    let image: UIImage
    var labelDiscount: String
    var labelDate: String
    static let example = PromoLargeCard(image: (UIImage(named: "PromoLargeImage") ?? UIImage(systemName: "camera"))!, labelDiscount: "скидки до 30%", labelDate: "с 13 по 23 июля")
}
