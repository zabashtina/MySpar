import SwiftUI

struct PromoLargeCardView: View {
    let promo: PromoLargeCard
    var body: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.white)
                .shadow(radius: 5)
            Image(uiImage: promo.image)
                .resizable()
                .frame(width: .infinity, height: .infinity).cornerRadius(20)
            HStack {
                Text(promo.labelDiscount)
                    .padding(7)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(10)
                    .padding(.top, 15)
                Text(promo.labelDate)
                    .padding(7)
                    .foregroundColor(.white)
                    .background(.yellow)
                    .cornerRadius(10)
                    .padding(.top, 15)
            }
        } .frame(width: 330, height: 200)
            .padding(.all, 10)
    }
}

struct PromoLargeCardView_Previews: PreviewProvider {
    static var previews: some View {
        PromoLargeCardView(promo: PromoLargeCard.example)
    }
}
