//
//  U1.swift
//  TH_App23
//
//  Created by IGOR on 14/02/2025.
//

import SwiftUI

struct U1: View {
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("U1")
                    .resizable()
                    .ignoresSafeArea()
            }
            
            VStack {
                
                Spacer()
                
                VStack(spacing: 15) {
                    
                    Text("Welcome to SWEET BONANZA!")
                        .foregroundColor(.black)
                        .font(.system(size: 24, weight: .regular))
                        .multilineTextAlignment(.center)
                    
                    Text("Get ready for an exciting journey into the world of sweets!")
                        .foregroundColor(.black)
                        .font(.system(size: 17, weight: .regular))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                        Review()
                            .navigationBarBackButtonHidden()
                        
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
    }
}

#Preview {
    U1()
}
