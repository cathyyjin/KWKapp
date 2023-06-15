//
//  chemistryPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct chemistryPage: View {
    @Environment(\.openURL) var openURL
    @State private var ddisStarClicked = false
    @State private var eeisStarClicked = false
    @State private var ffisStarClicked = false
    @State private var ggisStarClicked = false
    @State private var hhisStarClicked = false
    @State private var iisStarClicked = false
    @State private var jjisStarClicked = false
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("chemistry")
                    .font(.largeTitle)
                    .frame(height: 2.0)
            }
            .padding()
            HStack{
                Button("Fiveable") {
                            openURL(URL(string: "https://library.fiveable.me/ap-chem")!)
                        }
                Image(systemName: ddisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(ddisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                ddisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Released FRQs") {
                            openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-chemistry/exam/past-exam-questions")!)
                        }
                Image(systemName: eeisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(eeisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                eeisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Miss Marusik") {
                            openURL(URL(string: "https://www.youtube.com/@MissMarusik")!)
                        }
                Image(systemName: ffisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(ffisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                ffisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("The Organic Chemistry Tutor") {
                            openURL(URL(string: "https://www.youtube.com/@TheOrganicChemistryTutor")!)
                        }
                Image(systemName: ggisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(ggisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                ggisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Practice Exam") {
                            openURL(URL(string: "http://haverfordalchemy.pbworks.com/w/file/fetch/75135557/Audit%20Practice%20AP%20Exam.pdf")!)
                        }
                Image(systemName: hhisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(hhisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                hhisStarClicked.toggle()
                            }
            }
            
                        .padding()
            HStack{
                Button("Virtual Chem Labs ") {
                            openURL(URL(string: "http://www.kentchemistry.com/APlabs/aplabs.htm")!)
                        }
                Image(systemName: iisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(iisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                iisStarClicked.toggle()
                            }
            }
            .padding()
            HStack{
                Button("Khan Academy ") {
                            openURL(URL(string: "https://www.khanacademy.org/science/ap-chemistry-beta")!)
                        }
                Image(systemName: jjisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(jjisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                jjisStarClicked.toggle()
                            }
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
