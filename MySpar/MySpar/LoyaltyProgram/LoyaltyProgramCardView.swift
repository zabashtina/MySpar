import SwiftUI

struct LoyaltyProgramCardView: View {
    let loyaltyProgram: LoyaltyProgramCard
    var body: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.green)
                .shadow(radius: 5)
            HStack(alignment: .top) {
                Text("\(loyaltyProgram.bonusses) бонусов")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Image(uiImage: loyaltyProgram.qr)
                    .resizable()
                    .frame(width: 105, height: 105).cornerRadius(10)
            } .padding(.all, 15)
        } .frame(width: 350, height: 150)
            .padding(.all, 10)
    }
}

struct LoyaltyProgramCardView_Previews: PreviewProvider {
    static var previews: some View {
        LoyaltyProgramCardView(loyaltyProgram: LoyaltyProgramCard.example)
    }
}
