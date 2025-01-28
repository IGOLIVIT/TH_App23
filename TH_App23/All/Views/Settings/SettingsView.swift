//
//  SettingsView.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    
    @Environment(\.presentationMode) var router
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Settings")
                        .foregroundColor(.black)
                        .font(.system(size: 22, weight: .regular))
                    
                    Button(action: {
                        
                        router.wrappedValue.dismiss()
                        
                    }, label: {
                    
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .medium))
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.bottom, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 16) {
                        
                        Button(action: {
                            
                            SKStoreReviewController.requestReview()
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "star")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 17, weight: .medium))
                                
                                Text("Rate the app")
                                    .foregroundColor(.black)
                                    .font(.system(size: 17, weight: .medium))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.black.opacity(0.2))
                            }
                            .padding(20)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim").opacity(0.1)))
                        })
                        
                        Button(action: {

                            guard let url = URL(string: "https://www.termsfeed.com/live/72f5394b-4a43-441f-bbf0-7622cab7506c") else { return }
                            
                            UIApplication.shared.open(url)
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "menucard")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 17, weight: .medium))
                                
                                Text("Usage Policy")
                                    .foregroundColor(.black)
                                    .font(.system(size: 17, weight: .medium))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.black.opacity(0.2))
                            }
                            .padding(20)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim").opacity(0.1)))
                        })
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    SettingsView()
}
