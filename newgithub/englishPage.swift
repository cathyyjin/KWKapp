//
//  englishPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct englishPage: View {
    @Environment(\.openURL) var openURL
    @State private var misStarClicked = false
    @State private var nisStarClicked = false
    @State private var oisStarClicked = false
    @State private var pisStarClicked = false
    @State private var qisStarClicked = false
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("english")
                    .font(.largeTitle)
                    .frame(height: 2.0)
            }
            .padding()
            HStack{
                Button("Fiveable") {
                            openURL(URL(string: "https://library.fiveable.me/ap-lit")!)
                        }
                Image(systemName: misStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(misStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                misStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Released FRQs") {
                            openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-english-literature-and-composition/exam/past-exam-questions")!)
                        }
                Image(systemName: nisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(nisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                nisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Ms Peer Editor") {
                            openURL(URL(string: "https://www.youtube.com/@MsPeerEditor")!)
                        }
                Image(systemName: oisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(oisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                oisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Practice Exam") {
                            openURL(URL(string: "https://secure-media.collegeboard.org/digitalServices/pdf/ap/ap-english-literature-public-practice-exam-2012.pdf")!)
                        }
                Image(systemName: pisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(pisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                pisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Khan Academy ") {
                            openURL(URL(string: "https://support.khanacademy.org/hc/en-us/community/posts/115000358488-AP-English-Literature-And-Language-")!)
                        }
                Image(systemName: qisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(qisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                qisStarClicked.toggle()
                            }
                                .padding()
            }
            
                
                
                
            }
        Spacer()
        .padding()
            
        }
    }

struct englishPage_Previews: PreviewProvider {
    static var previews: some View {
        englishPage()
    }
}
