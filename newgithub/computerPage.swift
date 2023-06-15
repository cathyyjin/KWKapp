//
//  computerPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct computerPage: View {
    @Environment(\.openURL) var openURL
    @State private var gisStarClicked = false
    @State private var hisStarClicked = false
    @State private var isStarClicked = false
    @State private var jisStarClicked = false
    @State private var kisStarClicked = false
    @State private var lisStarClicked = false
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("computer science")
                    .font(.largeTitle)
                    .frame(height: 2.0)
            }
            .padding()
            HStack{
                Button("Fiveable") {
                            openURL(URL(string: "https://library.fiveable.me/ap-comp-sci-a")!)
                        }
                Image(systemName: gisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(gisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                gisStarClicked.toggle()
                            }
            }
            
            
            .padding()
            HStack{
                Button("Released FRQs") {
                            openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-computer-science-a/exam/past-exam-questions")!)
                        }
                Image(systemName: hisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(hisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                hisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("AP Practice Session") {
                            openURL(URL(string: "https://www.youtube.com/watch?v=qx0XjbHZ7IA&list=PLoGgviqq4845xKOY11PnkE7aqJC7-bYrd")!)
                        }
                Image(systemName: isStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(isStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                isStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Practice Exam") {
                            openURL(URL(string: "https://apcentral.collegeboard.org/media/pdf/ap-2020exam-sample-questions-computer-science.pdfy")!)
                        }
                Image(systemName: jisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(jisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                jisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("CS Labs ") {
                            openURL(URL(string: "https://codehs.com/course/apcsalabs/overview")!)
                        }
                Image(systemName: kisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(kisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                kisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Khan Academy ") {
                            openURL(URL(string: "https://support.khanacademy.org/hc/en-us/community/posts/360069394912-AP-Computer-Science-A")!)
                        }
                Image(systemName: lisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(lisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                lisStarClicked.toggle()
                            }
            }
            
            .padding()
            
                
                
                
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
