//
//  HousePage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/14/23.
//

import SwiftUI

struct HousePage: View {
    var body: some View {
        ZStack {
            Image("Sage-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("Title").aspectRatio(contentMode: .fit).frame(width: -5.0) .offset(y: -200)
                
                Text("Don't Ignore Your Own potential") .offset(y:-225)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                
            }
        }}
    struct HousePage_Previews: PreviewProvider {
        static var previews: some View {
            HousePage()
        }
    }
}
