import SwiftUI

struct StoriesView: View {
    let stories: StoriesItem
    var body: some View {
        VStack(spacing: 5) {
            ZStack {
                Circle()
                    .fill(.green)
                    .frame(width: 65, height: 65)
                Circle()
                    .fill(.white)
                    .frame(width: 60, height: 60)
                Image(uiImage: stories.image)
                    .resizable()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
            }
            Text(stories.text)
                .font(.caption)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(width: 75, height: 35)
        } .padding(.all, 10)
    }
}

