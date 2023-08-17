import SwiftUI

struct ProductCard: Hashable {
    let image: UIImage
    var price: Float
    var oldPrice: Float?
    var label: String?
    static let examplesRecommendations = [
        ProductCard(image: (UIImage(named: "Product1") ?? UIImage(systemName: "camera"))!, price: 789.00, oldPrice: 889, label: "Cупер цена"),
        ProductCard(image: (UIImage(named: "Product2") ?? UIImage(systemName: "camera"))!, price: 99.90),
        ProductCard(image: (UIImage(named: "Product5") ?? UIImage(systemName: "camera"))!, price: 309.90, oldPrice: 489.90, label: "Удар по ценам")
        ]
    static let examplesSweet = [
        ProductCard(image: (UIImage(named: "Product3") ?? UIImage(systemName: "camera"))!, price: 99.90),
        ProductCard(image: (UIImage(named: "Product4") ?? UIImage(systemName: "camera"))!, price: 99.90)
        ]
}
