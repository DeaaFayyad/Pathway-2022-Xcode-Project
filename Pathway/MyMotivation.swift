//
//  MyMotivation.swift
//  Pathway
//
//  Created by Deaa Fayyad on 28/5/2022.
//

import SwiftUI

struct MotivationView: View {
    var body: some View {
        NavigationView{
            ScrollView { // Allows user to scroll through page
                VStack(spacing: 20) {
                Group { // Groups a number of elements together, as sometimes it gets full, and requires many groups to avoid error in code
                    ForEach(0..<1) { // Allows for a list of images in this format, so user can scroll through and read whatever they desire
                        Text("Scroll for more!")
                        .foregroundColor(Color.black)
                        Color.red
                        Spacer()
                        Text("READ THE RIGHT ONE TODAY! \($0)")
                        .foregroundColor(Color.blue)
                        Image ("M1")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M2")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M3")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M4")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M5")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                    }
                    
                    Group { // Groups a number of elements together, as sometimes it gets full, and requires many groups to avoid error in code
                        Image ("M6")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M7")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M8")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M9")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M10")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M11")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M12")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M13")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M14")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M15")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                    }
                    
                    Group { // Groups a number of elements together, as sometimes it gets full, and requires many groups to avoid error in code
                        Image ("M16")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M17")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M18")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M19")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M20")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M21")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M22")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M23")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M24")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M25")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                    }
                    
                    Group { // Groups a number of elements together, as sometimes it gets full, and requires many groups to avoid error in code
                        Image ("M26")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M27")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M28")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M29")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M30")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M31")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M32")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                        Image ("M33")
                        .resizable()
                        .scaledToFit()
                        .frame(width:  350.0,height:300)
                    }

            ZStack {
                Color.yellow
            }
            .navigationTitle("Motivation") // Sets title for the page
        }
    }
}

        }
    }
}

struct qotmView: View { // Adds a new structure for the tabview to work, creates an additional view seen in the bottom bar
    var body: some View {
        NavigationView {
            VStack {
                let random = arc4random_uniform(33) // Plays a random image when the user opens the page, chosen out of the 33 images

                 switch random { // Replaces the currrent image with a new one when user opens the page
                   case 0: Image("M1")
                         .resizable()
                         .scaledToFit()
                         .frame(width:  350.0,height:400)
                       //show first image
                   case 1: Image("M2")
                         .resizable()
                         .scaledToFit()
                         .frame(width:  350.0,height:400)
                       //show second image
                    case 2: Image("M3")
                         .resizable()
                         .scaledToFit()
                         .frame(width:  350.0,height:400)
                        //show third image
                    case 3: Image("M4")
                         .resizable()
                         .scaledToFit()
                         .frame(width:  350.0,height:400)
                        //show fourth image
                     case 4: Image("M5")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show fifth image
                     case 5: Image("M6")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show sixth image
                     case 6: Image("M7")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show seventh image
                     case 7: Image("M8")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show eighth image
                     case 8: Image("M9")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show nineth image
                     case 9: Image("M10")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show tenth image
                     case 10: Image("M11")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show eleventh image
                     case 11: Image("M12")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show thwelfth image
                     case 12: Image("M13")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show thirteenth image
                     case 13: Image("M14")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show fourteenth image
                     case 14: Image("M15")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show fifteenth image
                     case 15: Image("M16")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show sixteenth image
                     case 16: Image("M17")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show seventeenth image
                     case 17: Image("M18")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show eighteenth image
                     case 18: Image("M19")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show nineteenth image
                     case 19: Image("M20")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show twentieth image
                     case 20: Image("M21")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show twenty first image
                     case 21: Image("M22")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show twenty second image
                     case 22: Image("M23")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show twenty third image
                     case 23: Image("M24")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show twenty fourth image
                     case 24: Image("M25")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show twenty fifth image
                     case 25: Image("M26")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show twenty sixth image
                     case 26: Image("M27")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show twenty seventh image
                     case 27: Image("M28")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show twenty eighth image
                     case 28: Image("M29")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show twenty nineth image
                     case 29: Image("M30")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show thirtieth image
                     case 30: Image("M31")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show thirty first image
                     case 31: Image("M32")
                          .resizable()
                          .scaledToFit()
                          .frame(width:  350.0,height:400)
                         //show thirty second image
                   default: Image("M33")
                         .resizable()
                         .scaledToFit()
                         .frame(width:  350.0,height:400)
                       //show thirty third image
                     
                 }
                ZStack {
                    Color.blue
                }
                .navigationTitle("Quote Of The Moment") // Heading for the page
            }
        }
    }
}


struct MyMotivation: View {
    var body: some View {
            TabView { // Sets the bottom bar, for the user to easily switch between the two pages
                MotivationView()
                    .tabItem {
                        Image(systemName: "photo.fill.on.rectangle.fill")
                        Text("Motivation")
                    }
                
                qotmView()
                    .tabItem {
                        Image(systemName: "text.below.photo.fill")
                        Text("Quote of the moment")
                }
            }
        }
    }

struct MyMotivation_Previews: PreviewProvider {
    static var previews: some View {
        MyMotivation()
    }
}
