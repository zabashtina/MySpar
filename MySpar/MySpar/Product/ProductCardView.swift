import SwiftUI

struct ProductCardView: View {
    let product: ProductCard
    var body: some View {
        NavigationLink {
            //
        } label: {
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(.white)
                    .shadow(radius: 5)
                VStack {
                    Image(uiImage: product.image)
                        .resizable()
                        .frame(width: .infinity, height: .infinity)
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Text(String(product.price))
                                Text("р/шт")
                                
                            } .fontWeight(.bold)
                                .foregroundColor(.black)
                            if let oldPrice = product.oldPrice{
                                Text(String(oldPrice))
                                    .fontWeight(.regular)
                                    .foregroundColor(.gray)
                                    .strikethrough()
                            }
                            
                        }
                        Spacer()
                        Button {
                            //add to cart
                        } label: {
                            Image(systemName: "cart.circle.fill")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .foregroundColor(.green)
                        }
                    }
                } .padding(.all, 10)
                if let label = product.label {
                    Text(label)
                        .padding(7)
                        .foregroundColor(.white)
                        .background(.red)
                        .opacity(0.7)
                        .cornerRadius(radius: 15, corners: [.topRight, .bottomRight, .topLeft])
                        
                }
            } .frame(width: 170, height: 210)
                .padding(.all, 10)
        }
    }
}

