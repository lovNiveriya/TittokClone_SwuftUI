//
//  FeedView.swift
//  TickTokClone
//
//  Created by LOVE  on 08/06/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    Rectangle()
                        .containerRelativeFrame([.horizontal,.vertical])
                        .overlay {
                            Text("Hi there \(index)")
                                .foregroundColor(.white)
                        }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
