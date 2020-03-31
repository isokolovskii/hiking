//
//  HikeDetail.swift
//  Hiking
//
//  Created by Иван Соколовский on 01.04.2020.
//  Copyright © 2020 Ivan Sokolovskii. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            
            Image(hike.imageUrl)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            
            Spacer()
            Text(String(format: "Distance: %.2f mi.", hike.miles))
                .font(.title)
            Spacer()
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Angels Landing", imageUrl: "tam", miles: 10.0))
    }
}
