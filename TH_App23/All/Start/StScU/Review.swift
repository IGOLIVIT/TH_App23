//
//  Review.swift
//  TH_App23
//
//  Created by IGOR on 14/02/2025.
//

import SwiftUI
import StoreKit

struct Review: View {

    @AppStorage("status") var status: Bool = false
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("Review")
                    .resizable()
                    .ignoresSafeArea()
            }
            
            VStack {
                
                Spacer()
                
                VStack(spacing: 15) {
                    
                    Text("Rate our app in the AppStore!")
                        .foregroundColor(.black)
                        .font(.system(size: 24, weight: .regular))
                    
                    Text("Help us to become better. We work for you.")
                        .foregroundColor(.black)
                        .font(.system(size: 17, weight: .regular))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Button(action: {
                        
                        status = true
                        
                    }, label: {
                        
                        HStack {
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .regular))
                            
                            Text("Next")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .regular))
                            
                        }
                        .padding(10)
                        .padding(.horizontal)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim")))
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.bottom)
                }
                .padding()
                .padding(.vertical, 20)
                .frame(maxWidth: .infinity)
                .frame(height: 280)
                .background(Color("bg"))
            }
            .ignoresSafeArea()
        }
        .onAppear {
            
            SKStoreReviewController.requestReview()
        }
    }
}

#Preview {
    Review()
}
