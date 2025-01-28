//
//  R2.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI

struct R2: View {
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("R2")
                    .resizable()
                    .ignoresSafeArea()
            }
            
            VStack {
                
                Spacer()
                
                VStack(spacing: 15) {
                    
                    Text("Checklist & Planning Features")
                        .foregroundColor(.black)
                        .font(.system(size: 22, weight: .regular))
                    
                    Text("Create and manage your to-do list, assign tasks, set deadlines, and add notes to ensure nothing is forgotten.")
                        .foregroundColor(.black)
                        .font(.system(size: 17, weight: .regular))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                        R3()
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
    R2()
}
