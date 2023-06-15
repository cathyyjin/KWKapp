//
//  physicsPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct physicsPage: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("physics")
                    .font(.title2)
                    .frame(height: 2.0)
            }
            .padding()
       
            Button("Fiveable") {
                        openURL(URL(string: "https://library.fiveable.me/ap-physics-1")!)
                    }
            .padding()
            Button("Released FRQs") {
                        openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-physics-1/exam/past-exam-questions")!)
                    }
            .padding()
            Button("Flipping Physics") {
                        openURL(URL(string: "https://www.youtube.com/@FlippingPhysics")!)
                    }
            .padding()
            Button("Practice Exam") {
                        openURL(URL(string: "https://www.nassauboces.org/cms/lib/NY01928409/Centricity/Domain/1371/AP%201%20Practice%20Exam.pdf")!)
                    }
            .padding()
            Button("Physics Lab ") {
                        openURL(URL(string: "https://www.pedersenscience.com/ap-physics-labs.html")!)
                    }.padding()
            Button("Khan Academy ") {
                        openURL(URL(string: "https://www.khanacademy.org/science/ap-college-physics-1")!)
                    }.padding()
            
                
                
                
            }
        Spacer()
        .padding()
            
        }
    }

struct physicsPage_Previews: PreviewProvider {
    static var previews: some View {
        physicsPage()
    }
}
