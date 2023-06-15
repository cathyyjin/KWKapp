//
//  biologyPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct biologyPage: View {
    @Environment(\.openURL) var openURL
    @State private var xisStarClicked = false
    @State private var yisStarClicked = false
    @State private var zisStarClicked = false
    @State private var aaisStarClicked = false
    @State private var bbisStarClicked = false
    @State private var ccisStarClicked = false
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("biology")
                    .font(.largeTitle)
                    .frame(height: 2.0)
            }
            .padding()
            HStack{
                Button("Fiveable") {
                            openURL(URL(string: "https://library.fiveable.me/ap-bio")!)
                        }
                Image(systemName: xisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(xisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                xisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Released FRQs") {
                            openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-biology/exam/past-exam-questions")!)
                        }
                Image(systemName: yisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(yisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                yisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Bozeman Science") {
                            openURL(URL(string: "https://www.youtube.com/@Bozemanscience1")!)
                        }
                Image(systemName: zisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(zisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                zisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("2013 Practice Exam") {
                            openURL(URL(string: "https://apcentral.collegeboard.org/media/pdf/ap-biology-practice-exam-2013.pdf?course=ap-biology")!)
                        }
                Image(systemName: aaisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(aaisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                aaisStarClicked.toggle()
                            }
            }
            
            .padding()
            HStack{
                Button("Virtual Bio Labs ") {
                            openURL(URL(string: "https://www.biointeractive.org/classroom-resources")!)
                        }
                Image(systemName: bbisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(bbisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                bbisStarClicked.toggle()
                            }
            }
            .padding()
            HStack{
                Button("Khan Academy ") {
                            openURL(URL(string: "https://www.khanacademy.org/science/ap-biology")!)
                        }
                Image(systemName: ccisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(ccisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                ccisStarClicked.toggle()
                            }
            }
            .padding()
            
            
                
                
                
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

