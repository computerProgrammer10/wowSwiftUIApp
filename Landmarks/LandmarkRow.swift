//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by DANIEL HUSEBY on 4/7/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 100, height: 100)
            Text(landmark.name)
                .bold()
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
            }
    }
}

#Preview {
    Group{
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
