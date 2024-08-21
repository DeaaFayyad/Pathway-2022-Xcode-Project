//
//  Meditationtutorial.swift
//  Pathway
//
//  Created by Deaa Fayyad on 7/6/2022.
//

import SwiftUI

struct Meditationtutorial: View {
    var body: some View {
        NavigationView {
            ScrollView { // Allows user to scroll through the page
                VStack {
                Group { // Groups a number of elements together, as sometimes it gets full, and requires many groups to avoid error in code
                    // APPLIES TO ALL TEXT & IMAGES IN THIS SCRIPT AS IT IS STRICTLY TEXT & IMAGES
                    // Tutorial for meditation is shown through text, user can take their time and read through carefully as well as view the provided images for a better understanding
                    Text("Meditation Tutorial")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom)
                        Spacer()
                    Text("Welcome to the meditation tutorial, we hear you are new here! Feel free to browse around and learn!")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    Spacer()
                    Text("Step 1:")
                    Spacer()
                    Text("Meditation means to calm your mind, your body too, therefore, before starting anything, place yourself in a quiet place, where only no sound or only natural sounds cross you and your meditation.")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    Image ("emptyroom")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300.0, height: 300)
                }
                    
                Group { // Groups a number of elements together, as sometimes it gets full, and requires many groups to avoid error in code
                    Text("Step 2:")
                    Spacer()
                    Text("Whilst meditating, it's always a great idea to get comfortable as you'll be indulging  for at least 5 to 10 minutes. Therefore, find yourself a chair you see suited, your bed, a pillow, a sofa or couch, whatever makes you feel comfy will be your best bet!")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    HStack {
                    Image ("sofa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100.0, height: 100)
                    Image ("bed")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100.0, height: 100)
                    Image ("chair")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100.0, height: 100)
                    }
                    }
                    
                    Group { // Groups a number of elements together, as sometimes it gets full, and requires many groups to avoid error in code
                        Text("Step 3:")
                        Spacer()
                        Text("Once your all comfortable on your chosen furniture, in an empty space with no noise, close your eyes")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        Image ("eyes")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300.0, height: 300)
                    }
                    
                    Group { // Groups a number of elements together, as sometimes it gets full, and requires many groups to avoid error in code
                        Text("Step 4:")
                        Spacer()
                        Text("With your eyes fully shut, place your arms beside you or on your lap, and start taking deep breaths, you must inhale through the nose, hold for 1 or 2 seconds, then let it out through the mouth")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        Image ("breathing")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300.0, height: 300)
                        
                        Text("Step 5:")
                        Spacer()
                        Text("Now that your breathing, with eyes closed and are fully concentrated, use your mind and control it, think of only positive things, when your breathing, create thoughts of which you want to become a reality in the future, maybe you want to be successful, own a home, raise a family, or maybe you want to focus on today, what goals do you have, indulge in them, make them a reality by keeping your mind attentive towards them")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        Image ("imagine")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300.0, height: 300)
                    }
                    
                    Group { // Groups a number of elements together, as sometimes it gets full, and requires many groups to avoid error in code
                        Text("Step 6:")
                        Text("You've reached the last step I see, well there is no step here, this is the end. Congrats on completing the meditation tutorial, feel free to visit back whenever your lost or just want to make sure your doing it right! Good luck and may your meditiation be mindful and full of positive!")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

struct Meditationtutorial_Previews: PreviewProvider {
    static var previews: some View {
        Meditationtutorial()
    }
}
