//
//  StudyTipPage.swift
//  newgithubX
//
//  Created by Cathy Jin on 6/13/23.
//

import SwiftUI

struct StudyTipPage: View {
    var body: some View {
        
      //  ScrollView {
            
            ZStack {
                Image("Sage-background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Text("STUDY TIPS")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding()
                        .italic()
                    
                    
                    
                    List {
                        
                        StudyTipCard(imageName: "Pomodoro", title: "Pomodoro Method", description: "- Intervals of 25 minute intense work sessions with 5 minute breaks.              - Increases Focus and Spreads Productivy levels throughout the day")
                        
                        StudyTipCard(imageName: "Feynman", title: "Feynman Technique", description: "1. Select a concept to learn            2.Teach it to a child: simplicity reveals a depth of understanding           3.Review and refine your understanding: writing helps reflection and learning.           4.Organize your notes and revisit them regularly.")
                        
                        StudyTipCard(imageName: "Study", title: "Active Recall", description: "Instead of copying yoru notes, close your books and try recalling the main ideas and explain them in your own words. Then, write questions for yourself on the topic to test yourself")
                        
                        StudyTipCard(imageName: "Blurting", title: "Blurting", description: "Studying consistently without any review can be ineffective. The Blurting Method helps identify weak spots that reauire further studying. 1. Select a Topic of Study         2.Write as much as you remember about that topic, conceptually as well, not just repetition.      3. Study forgotten information    4. Reapeat")
                        
                        StudyTipCard(imageName: "Textbooks", title: "Textbook Read", description: "Reading a chapter of a Textbook can be tedious. Therefore, reading the titles of sections and sub-sections allows one to anticipate the topic and read effectively. While reading, doodling on a pieace of paper as if you are taking notes improves concentration.")
                    }
                    .listStyle(PlainListStyle())
                    .padding(.horizontal)
                    
                }
         //   }
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

