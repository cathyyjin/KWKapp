//
//  englishPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct englishPage: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("english")
                    .font(.title2)
                    .frame(height: 2.0)
            }
            .padding()
            Button("Fiveable") {
                        openURL(URL(string: "https://library.fiveable.me/ap-lit")!)
                    }
            .padding()
            Button("Released FRQs") {
                        openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-english-literature-and-composition/exam/past-exam-questions")!)
                    }
            .padding()
            Button("Ms Peer Editor") {
                        openURL(URL(string: "https://www.youtube.com/@MsPeerEditor")!)
                    }
            .padding()
            Button("Practice Exam") {
                        openURL(URL(string: "https://secure-media.collegeboard.org/digitalServices/pdf/ap/ap-english-literature-public-practice-exam-2012.pdf")!)
                    }
            .padding()
            Button("Khan Academy ") {
                        openURL(URL(string: "https://support.khanacademy.org/hc/en-us/community/posts/115000358488-AP-English-Literature-And-Language-")!)
                    }
                            .padding()
                
                
                
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
