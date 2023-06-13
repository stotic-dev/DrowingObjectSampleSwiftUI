//
//  BadgeSymbolView.swift
//  SampleAnimationSwiftUI
//
//  Created by 佐藤汰一 on 2023/06/13.
//

import SwiftUI

struct BadgeSymbolView: View {
    var body: some View {
        ZStack{
            BageView()
            
            GeometryReader { geometry in
                    badgeSymbols
                    .scaleEffect(1.0 / 2.0, anchor: .center)
                
            }
            
        }
        .scaledToFit()
    }
    
    var badgeSymbols: some View {
            ForEach(0..<8) { index in
                RotatedBadgeSymbolView(
                    angle: .degrees(Double(index) / Double(8)) * 360.0
                )
            }
            .opacity(0.5)
        }
    
}

struct BadgeSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbolView()
    }
}
