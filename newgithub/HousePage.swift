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
                
                Image("LOGO 1")
                   // .offset(y: -250)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 800, height: 300) .offset(y:-300)
                    .blur(radius: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
                Text("Don't Ignore Your Own potential")
                    .lineLimit(2)
                    .offset(y:-350)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .blur(radius: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
                
            }
        }}
    struct HousePage_Previews: PreviewProvider {
        static var previews: some View {
            HousePage()
        }
    }
}
