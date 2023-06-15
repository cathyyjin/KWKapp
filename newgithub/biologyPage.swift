//
//  biologyPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct biologyPage: View {
    @Environment(\.openURL) var openURL
    /*Button("Visit Apple") {
     openURL(URL(string: "https://www.apple.com")!)
     */
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("biology")
                    .font(.title2)
                    .frame(height: 2.0)
            }
            .padding()
            Button("Fiveable") {
                        openURL(URL(string: "https://library.fiveable.me/ap-bio")!)
                    }
            .padding()
            Button("Released FRQs") {
                        openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-biology/exam/past-exam-questions")!)
                    }
            .padding()
            Button("Bozeman Science") {
                        openURL(URL(string: "https://www.youtube.com/@Bozemanscience1")!)
                    }
            .padding()
            Button("2013 Practice Exam") {
                        openURL(URL(string: "https://apcentral.collegeboard.org/media/pdf/ap-biology-practice-exam-2013.pdf?course=ap-biology")!)
                    }
            .padding()
            Button("Virtual Bio Labs ") {
                        openURL(URL(string: "https://www.biointeractive.org/classroom-resources")!)
                    }.padding()
            Button("Khan Academy ") {
                        openURL(URL(string: "https://www.khanacademy.org/science/ap-biology")!)
                    }.padding()
            
                
                
                
            }
        Spacer()
        .padding()
            
        }
    }
    
    struct biologyPage_Previews: PreviewProvider {
        static var previews: some View {
            biologyPage()
        }
    }

