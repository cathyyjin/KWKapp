//
//  ResourcePage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/13/23.
//

import SwiftUI

struct ResourcePage: View {
    private var listOfsubject = subjectList
    @State var searchText = ""
    @State var page = ""
    var body: some View {
        NavigationView{
            List{
                ForEach(subjects, id: \.self) { subject in
                    NavigationLink{
                        
                        
                        
                    }
                label:{
                    HStack{
                        Text(subject.capitalized)
                        Spacer()
                    }
                    .padding()
                }
                    
                    
                    
                    
                }
            }
            .searchable(text: $searchText)
            .navigationTitle ("help:")
           
            
            
        }
        
        
    }
    var subjects: [String]{
        let lcSubjects = listOfsubject.map { $0.lowercased() }
        
        return searchText == "" ? lcSubjects : lcSubjects.filter {
            $0.contains(searchText.lowercased())
        }
    }
}

struct ResourcePage_Previews: PreviewProvider {
    static var previews: some View {
        ResourcePage()
    }
}
