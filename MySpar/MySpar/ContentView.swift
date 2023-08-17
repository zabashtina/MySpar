import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainScreenView()
                .tabItem {
                    Label("Главная", systemImage: "house")
                }
            Text("CatalogScreen")
                .tabItem {
                    Label("Каталог", systemImage: "die.face.4")
                }
            Text("CartScreen")
                .tabItem {
                    Label("Корзина", systemImage: "cart")
                }
            Text("ProfileScreen")
                .tabItem {
                    Label("Профиль", systemImage: "person")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
