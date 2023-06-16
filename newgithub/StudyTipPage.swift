//
//  StudyTipPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/13/23.
//

import SwiftUI

struct StudyTipPage: View {
    var body: some View {
        VStack {
            Text("Study Tips")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            List {
                StudyTipCard(imageName: "", title: "Pomodoro Method", description: "- Intervals of 25 minute intense work sessions with 5 minute breaks.              - Increases Focus and Spreads Productivy levels throughout the day")
                
                StudyTipCard(imageName: "", title: "Feynman Technique", description: "1. Select a concept to learn            2.Teach it to a child: simplicity reveals a depth of understanding           3.Review and refine your understanding: writing helps reflection and learning.           4.Organize your notes and revisit them regularly.")
                
                StudyTipCard(imageName: "", title: "Active Recall", description: "Instead of copying yoru notes, close your books and try recalling the main ideas and explain them in your own words. Then, write questions for yourself on the topic to test yourself")
                
                StudyTipCard(imageName: "", title: "", description: ".")
                
                StudyTipCard(imageName: "", title: "", description: "")
            }
            .listStyle(PlainListStyle())
            .padding(.horizontal)
        }
    }
}
struct StudyTipCard: View {
    var imageName: String
    var title: String
    var description: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .cornerRadius(10)
            
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
            
            Text(description)
                .font(.body)
                .multilineTextAlignment(.center)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}
struct StudyTipPage_Previews: PreviewProvider {
    static var previews: some View {
        StudyTipPage()
    }
}
