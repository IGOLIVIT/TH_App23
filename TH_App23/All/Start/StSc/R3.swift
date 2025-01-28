//
//  R3.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI

struct R3: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("R3")
                    .resizable()
                    .ignoresSafeArea()
            }
            
            VStack {
                
                Spacer()
                
                VStack(spacing: 15) {
                    
                    Text("Surprise Ideas & Wedding Tips")
                        .foregroundColor(.black)
                        .font(.system(size: 22, weight: .regular))
                    
                    Text("Write down your gift ideas and explore interesting wedding tips and traditions.")
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
    }
}

#Preview {
    R3()
}
