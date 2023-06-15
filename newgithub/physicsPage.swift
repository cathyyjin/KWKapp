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
           Spacer()
           //stopped here
            Button("Fiveable") {
                        openURL(URL(string: "https://library.fiveable.me/ap-physics-1")!)
                    }
            //Spacer()
            Button("Released FRQs") {
                        openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-biology/exam/past-exam-questions")!)
                    }
            //Spacer()
            Button("Bozeman Science") {
                        openURL(URL(string: "https://www.youtube.com/@Bozemanscience1")!)
                    }
            //Spacer()
            Button("2013 Practice Exam") {
                        openURL(URL(string: "https://apcentral.collegeboard.org/media/pdf/ap-biology-practice-exam-2013.pdf?course=ap-biology")!)
                    }
            
            Button("Virtual Bio Labs ") {
                        openURL(URL(string: "https://www.biointeractive.org/classroom-resources")!)
                    }
            Button("Khan Academy ") {
                        openURL(URL(string: "https://www.khanacademy.org/science/ap-biology")!)
                    }
            
                
                
                
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
