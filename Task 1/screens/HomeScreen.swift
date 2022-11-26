//
//  HomeScreen.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 26/11/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach((1...8), id: \.self) { item in
                    Image("img\(item)")
                        .resizable()
                        .scaledToFit()
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                }
            }
            .padding(.top, 5)
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: HStack {
                    Image(systemName: "camera.fill")
                    Image(systemName: "photo.fill")
                }
            )
            .navigationBarTitle("Home", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
