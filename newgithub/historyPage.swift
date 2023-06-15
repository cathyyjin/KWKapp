//
//  historyPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct historyPage: View {
    @Environment(\.openURL) var openURL
    @State private var risStarClicked = false
    @State private var sisStarClicked = false
    @State private var tisStarClicked = false
    @State private var uisStarClicked = false
    @State private var visStarClicked = false
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("history")
                    .font(.largeTitle)
                    .frame(height: 2.0)
            }
            .padding()
            HStack{
                Button("Fiveable") {
                            openURL(URL(string: "https://library.fiveable.me/apush")!)
                        }
                Image(systemName: risStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(risStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                risStarClicked.toggle()
                            }
            }
           
            .padding()
            HStack{
                Button("Released FRQs") {
                            openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-united-states-history/exam/past-exam-questions")!)
                        }
                Image(systemName: sisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(sisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                sisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Heimler") {
                            openURL(URL(string: "https://www.youtube.com/@heimlershistory")!)
                        }
                Image(systemName: tisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(tisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                tisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Practice Exam") {
                            openURL(URL(string: "https://apcentral.collegeboard.org/media/pdf/ap-united-states-history-ced-practice-exam.pdf")!)
                        }
                Image(systemName: uisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(uisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                uisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Khan Academy ") {
                            openURL(URL(string: "https://www.khanacademy.org/humanities/ap-us-history")!)
                        }
                Image(systemName: visStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(visStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                visStarClicked.toggle()
                            }.padding()
            }
            
            
                
                
                
            }
        Spacer()
        .padding()
            
        }
    }

struct historyPage_Previews: PreviewProvider {
    static var previews: some View {
        historyPage()
    }
}
