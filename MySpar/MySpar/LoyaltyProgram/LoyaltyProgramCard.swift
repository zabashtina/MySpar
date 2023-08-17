import SwiftUI

struct LoyaltyProgramCard {
    let qr: UIImage
    var bonusses: Int
    static let example = LoyaltyProgramCard(qr: (UIImage(named: "QRImage") ?? UIImage(systemName: "camera"))!, bonusses: 0)
}
