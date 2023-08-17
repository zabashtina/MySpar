import SwiftUI

struct PromoSmallCardView: View {
    let promo: PromoSmallCard
    var body: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.white)
                .shadow(radius: 5)
            Image(uiImage: promo.image)
                .resizable()
                .frame(width: .infinity, height: .infinity).cornerRadius(20)
            Text(promo.text)
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .padding(.all, 10)
            
        } .frame(width: 120, height: 170)
            .padding(.all, 10)
    }
}

struct PromoSmallCardView_Previews: PreviewProvider {
    static var previews: some View {
        PromoSmallCardView(promo: PromoSmallCard.example)
    }
}
