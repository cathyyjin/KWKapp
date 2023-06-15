//
//  computerPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct computerPage: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("computer science")
                    .font(.title2)
                    .frame(height: 2.0)
            }
            .padding()
            Button("Fiveable") {
                        openURL(URL(string: "https://library.fiveable.me/ap-comp-sci-a")!)
                    }
            .padding()
            Button("Released FRQs") {
                        openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-computer-science-a/exam/past-exam-questions")!)
                    }
            .padding()
            Button("AP Practice Session") {
                        openURL(URL(string: "https://www.youtube.com/watch?v=qx0XjbHZ7IA&list=PLoGgviqq4845xKOY11PnkE7aqJC7-bYrd")!)
                    }
            .padding()
            Button("Practice Exam") {
                        openURL(URL(string: "https://apcentral.collegeboard.org/media/pdf/ap-2020exam-sample-questions-computer-science.pdfy")!)
                    }
            .padding()
            Button("CS Labs ") {
                        openURL(URL(string: "https://codehs.com/course/apcsalabs/overview")!)
                    }.padding()
            Button("Khan Academy ") {
                        openURL(URL(string: "https://support.khanacademy.org/hc/en-us/community/posts/360069394912-AP-Computer-Science-A")!)
                    }.padding()
            
                
                
                
            }
        Spacer()
        .padding()
            
        }
    }

struct computerPage_Previews: PreviewProvider {
    static var previews: some View {
        computerPage()
    }
}
