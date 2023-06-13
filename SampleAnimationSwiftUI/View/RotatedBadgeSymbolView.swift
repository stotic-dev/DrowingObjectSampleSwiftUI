//
//  RotatedBadgeSymbolView.swift
//  SampleAnimationSwiftUI
//
//  Created by 佐藤汰一 on 2023/06/13.
//

import SwiftUI

struct RotatedBadgeSymbolView: View {
    let angle: Angle
    
    var body: some View {
    
        BadgeDecoView()
            .rotationEffect(angle, anchor: .center)
        
    }
}

struct RotatedBadgeSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbolView(angle: Angle(degrees: 30))
    }
}
