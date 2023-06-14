//
//  ContentView.swift
//  newgithub
//
//  Created by Cathy Jin on 6/12/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView{
                    HousePage()
                        .tabItem(){
                            Image (systemName:"house")
                        }
                    
                    PhotoPage()
                        .tabItem(){
                            Image(systemName:"plus")
                        }
                    
            ResourcePage()
                .tabItem(){
                    Image(systemName:"magazine")
                }
        StudyTipPage()
                 .tabItem(){
                    Image(systemName:"pencil")
                        }
            ProfileSettingPage()
                .tabItem(){
                    Image(systemName: "person.crop.circle")
                }
            
        
                }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

