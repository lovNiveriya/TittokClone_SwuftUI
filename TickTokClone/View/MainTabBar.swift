import SwiftUI

struct MainTabBar: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView {
            Text("Feed")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                .onAppear(perform: {
                    selectedTab = 0
                })
                .tag(0)

            Text("Friends")
                .tabItem {
                    VStack {
                        Image(systemName: "person.2")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear(perform: {
                    selectedTab = 1
                })
                .tag(1)

            Text("Upload post")
                .tabItem {
                    VStack{
                        Image(systemName: "plus")
                    }
                }

            Text("Notification")
                .tabItem {
                    VStack{
                        Image(systemName: "heart")
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        Text("Notification")
                    }
                }
                .onAppear(perform: {
                    selectedTab = 3
                })
                .tag(3)

            Text("Profile")
                .tabItem {
                    VStack{
                        Image(systemName: "person")
                            .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                        Text("Profile")
                    }
                }
                .onAppear(perform: {
                    selectedTab = 4
                })
                .tag(4)
        }
        .tint(.green)
    }
    private var homeView: some View {
        VStack {
            Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
            Text("Home")
        }
    }
    
}

#Preview {
    MainTabBar()
}
