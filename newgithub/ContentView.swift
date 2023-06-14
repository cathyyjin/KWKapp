//
//  ContentView.swift
//  newgithub
//
//  Created by Cathy Jin on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                
                Text("This is home page.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
               
                    
               NavigationLink(destination: PhotoPage()
                     .font(.headline)) {
                         Text("Photo")
                             .padding(.vertical)
                     }
                NavigationLink(destination: ResourcePage()
                      .font(.headline)) {
                          Text("Resource")
                              .padding(.vertical)
                      }
                NavigationLink(destination: StudyTipPage()
                      .font(.headline)) {
                          Text("study tips")
                              .padding(.vertical)
                      }
                
                
                     
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
