//
//  calculusPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct calculusPage: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("calculus")
                    .font(.title2)
                    .frame(height: 2.0)
            }
            .padding()
            Button("Fiveable") {
                        openURL(URL(string: "https://library.fiveable.me/ap-calc")!)
                    }
            .padding()
            Button("Released FRQs") {
                        openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-calculus-ab/exam/past-exam-questions")!)
                    }
            .padding()
            Button("The Organic Chemistry Tutor") {
                        openURL(URL(string: "https://www.youtube.com/@TheOrganicChemistryTutor")!)
                    }
            .padding()
            Button("Practice Exam") {
                        openURL(URL(string: "https://secure-media.collegeboard.org/digitalServices/pdf/ap/sample-questions-ap-calculus-ab-and-bc-exams.pdf")!)
                    }
            .padding()
            Button("Khan Academy ") {
                        openURL(URL(string: "https://www.khanacademy.org/math/ap-calculus-ab")!)
                    }.padding()
            
                
                
                
            }
        Spacer()
        .padding()
            
        }
    }

struct calculusPage_Previews: PreviewProvider {
    static var previews: some View {
        calculusPage()
    }
}
