//
//  HousePage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/14/23.
//

import SwiftUI

struct HousePage: View {
    
 //   func buttonPressed (){
 //       print("button pressed")
 //   }
    
    var body: some View {
        
        
        ZStack {
            Image("Sage-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                Image("Logo")
                
                Text("Don't Ignore Your Own Potential")
                    .font(.title3)
                    .padding()
                
                
                Image("Animal")
                    .padding()
                
            }
        }
    }
}



//IPHONE VIEW
struct HousePage_Previews: PreviewProvider {
    static var previews: some View {
        HousePage()
    }
}

