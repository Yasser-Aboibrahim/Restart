//
//  OnboardingView.swift
//  Restart
//
//  Created by Yasser Aboibrahim on 07/07/2024.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

    // MARK: - BODY

    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)

            VStack(spacing: 20) {
                // MARK: - Header
                Spacer()
                VStack(spacing:0) {
                    Text("Shate.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Text("""
                    It's not how much we give but
                    how much love we put into giving.
                    """)
                      .font(.title3)
                      .fontWeight(.light)
                      .foregroundColor(.white)
                      .multilineTextAlignment(.center)
                      .padding(.horizontal, 10)
                    
                }
                // MARK: - Center
                ZStack {
                    ZStack{
                        CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                        
                        Image("character-1")
                            .resizable()
                            .scaledToFit()

                    } //: ZSTACK
                } //: Center
                Spacer()
                // MARK: - Footer
                
                ZStack{
                    // Parts of the custom button
                    
                    // 1. Background (Static)
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    // 2. Call-To-Sction
                    
                    Text("Get Started")
                      .font(.system(.title3, design: .rounded))
                      .fontWeight(.bold)
                      .foregroundColor(.white)
                      .offset(x: 20)
                    
                    // 3. Caplsule (Dynamic Widht)
                    
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        Spacer()
                    }
                    
                    // 4. Circle (Draggable)
                    
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        } //: Zstack
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }
                        Spacer()
                    } //: Hstack
    
                } //: Footer
                .frame(height: 80, alignment: .center)
                .padding()
            } //: VSTACK
        } //: ZSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    OnboardingView()
}
