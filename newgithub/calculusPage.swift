//
//  calculusPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct calculusPage: View {
    @Environment(\.openURL) var openURL
    @State private var kkisStarClicked = false
    @State private var llisStarClicked = false
    @State private var mmisStarClicked = false
    @State private var nnisStarClicked = false
    @State private var ooisStarClicked = false
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("calculus")
                    .font(.largeTitle)
                    .frame(height: 2.0)
            }
            .padding()
            HStack {
                Button("Fiveable") {
                            openURL(URL(string: "https://library.fiveable.me/ap-calc")!)
                        }
                Image(systemName: kkisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(kkisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                kkisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack {
                Button("Released FRQs") {
                            openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-calculus-ab/exam/past-exam-questions")!)
                        }
                Image(systemName: llisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(llisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                llisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack {
                Button("The Organic Chemistry Tutor") {
                            openURL(URL(string: "https://www.youtube.com/@TheOrganicChemistryTutor")!)
                        }
                Image(systemName: mmisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(mmisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                mmisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack {
                Button("Practice Exam") {
                            openURL(URL(string: "https://secure-media.collegeboard.org/digitalServices/pdf/ap/sample-questions-ap-calculus-ab-and-bc-exams.pdf")!)
                        }
                Image(systemName: nnisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(nnisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                nnisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack {
                Button("Khan Academy ") {
                            openURL(URL(string: "https://www.khanacademy.org/math/ap-calculus-ab")!)
                        }
                Image(systemName: ooisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(ooisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                ooisStarClicked.toggle()
                            }
                            .padding()
            }
            
            
                
                
                
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
