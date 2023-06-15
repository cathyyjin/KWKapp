//
//  historyPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct historyPage: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("history")
                    .font(.title2)
                    .frame(height: 2.0)
            }
            .padding()
            Button("Fiveable") {
                        openURL(URL(string: "https://library.fiveable.me/apush")!)
                    }
            .padding()
            Button("Released FRQs") {
                        openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-united-states-history/exam/past-exam-questions")!)
                    }
            .padding()
            Button("Heimler") {
                        openURL(URL(string: "https://www.youtube.com/@heimlershistory")!)
                    }
            .padding()
            Button("Practice Exam") {
                        openURL(URL(string: "https://apcentral.collegeboard.org/media/pdf/ap-united-states-history-ced-practice-exam.pdf")!)
                    }.padding()
            Button("Khan Academy ") {
                        openURL(URL(string: "https://www.khanacademy.org/humanities/ap-us-history")!)
                    }.padding()
            
                
                
                
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
