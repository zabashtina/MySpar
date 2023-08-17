import SwiftUI

struct MainScreenView: View {
    @State private var location = "Moсква, Москва и Московская область"
    var body: some View {
        VStack {
            HStack {
                Button {
                    //
                } label: {
                    HStack {
                        Image(systemName: "location")
                            .foregroundColor(.red)
                        Text(location)
                            .foregroundColor(.black)
                            .lineLimit(1)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 5)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .padding(.bottom, 5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 0.5)
                    )
                }
                Button {
                    //
                } label: {
                    Image(systemName: "text.justify")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
            } .padding(.leading, 15)
                .padding(.trailing, 15)
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(StoriesItem.examples, id: \.self) { example in
                            LazyHStack {
                                StoriesView(stories: example)
                            }
                        }
                    }
                }
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            PromoLargeCardView(promo: PromoLargeCard.example)
                            PromoLargeCardView(promo: PromoLargeCard.example)
                        }
                    }
                    LoyaltyProgramCardView(loyaltyProgram: LoyaltyProgramCard.example)
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            PromoSmallCardView(promo: PromoSmallCard.example)
                            PromoSmallCardView(promo: PromoSmallCard.example)
                            PromoSmallCardView(promo: PromoSmallCard.example)
                            PromoSmallCardView(promo: PromoSmallCard.example)
                        }
                    }
                    VStack(alignment: .leading) {
                        Text("Рекомендуем")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading, 15)
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(ProductCard.examplesRecommendations, id: \.self) { example in
                                    LazyHStack {
                                        ProductCardView(product: example)
                                    }
                                }
                            }
                        }
                    }
                    VStack(alignment: .leading) {
                        Text("Сладкое настроение")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading, 15)
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(ProductCard.examplesSweet, id: \.self) { example in
                                    LazyHStack {
                                        ProductCardView(product: example)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
