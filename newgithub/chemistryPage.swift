//
//  chemistryPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct chemistryPage: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("chemistry")
                    .font(.title2)
                    .frame(height: 2.0)
            }
            .padding()
            Button("Fiveable") {
                        openURL(URL(string: "https://library.fiveable.me/ap-chem")!)
                    }
            .padding()
            Button("Released FRQs") {
                        openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-chemistry/exam/past-exam-questions")!)
                    }
            .padding()
            Button("Miss Marusik") {
                        openURL(URL(string: "https://www.youtube.com/@MissMarusik")!)
                    }
            .padding()
            Button("The Organic Chemistry Tutor") {
                        openURL(URL(string: "https://www.youtube.com/@TheOrganicChemistryTutor")!)
                    }
            .padding()
            Button("Practice Exam") {
                        openURL(URL(string: "http://haverfordalchemy.pbworks.com/w/file/fetch/75135557/Audit%20Practice%20AP%20Exam.pdf")!)
                    }.padding()
            
            Button("Virtual Chem Labs ") {
                        openURL(URL(string: "http://www.kentchemistry.com/APlabs/aplabs.htm")!)
                    }.padding()
            Button("Khan Academy ") {
                        openURL(URL(string: "https://www.khanacademy.org/science/ap-chemistry-beta")!)
                    }
            .padding()
                
                
                
            }
        Spacer()
        .padding()
            
        }
    }

struct chemistryPage_Previews: PreviewProvider {
    static var previews: some View {
        chemistryPage()
    }
}
