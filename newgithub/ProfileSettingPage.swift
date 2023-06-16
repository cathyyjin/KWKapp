//
//  ProfileSettingPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/13/23.
//

import SwiftUI

struct ProfileSettingPage: View {
    @State var username = ""
    @State var SavedName = ""
    var body: some View {
        VStack{
            
            Text("\(SavedName)")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .offset(y: 20)
            Spacer()
            
            Image("smart")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .offset(y: -100)
            
            Text("Hello Scholar")
                .font(.title)
                .fontWeight(.semibold)
                .offset(y: -80)
            
                 TextField("Enter Your Name", text: $username)
                .font(.title)
                .offset(y: -80)
                 Button (action: {saveData()}){
                     Text("Save")
                         .font(.title3)
                     
                         .offset(y: -60)
            }
                 Spacer()
            
                 }.onAppear(perform: {
                getData()
            })
        
    }
    func saveData(){
        UserDefaults.standard.set(self.username, forKey: "UserName")
        }
    func getData(){
                SavedName = "Welcome: \(UserDefaults.standard.string(forKey:"UserName") ?? "")"
        
                }
}


struct ProfileSettingPage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettingPage()
    }
}
