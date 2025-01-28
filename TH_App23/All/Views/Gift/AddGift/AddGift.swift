//
//  AddGift.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI

struct AddGift: View {

    @StateObject var viewModel: GiftViewModel
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("New gift idea")
                        .foregroundColor(.black)
                        .font(.system(size: 17, weight: .regular))
                    
                    HStack {
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isAdd = false
                            }
                            
                        }, label: {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .regular))
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            
                            viewModel.addGift()
                            
                            viewModel.gGift = ""
                            viewModel.gBudget = ""
                            viewModel.gNote = ""
                            
                            viewModel.fetchGifts()
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isAdd = false
                            }
                            
                        }, label: {
                            
                            Text("Save")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 17, weight: .medium))
                        })
                        .opacity(viewModel.gGift.isEmpty || viewModel.gBudget.isEmpty ? 0.5 : 1)
                        .disabled(viewModel.gGift.isEmpty || viewModel.gBudget.isEmpty ? true : false)
                    }
                }
                
                Rectangle()
                    .fill(.gray.opacity(0.13))
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .padding(.bottom, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 15) {
                        
                        HStack {
                            
                            VStack(spacing: 15) {
                                
                                Text("Gift&Budget")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .regular))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                ZStack(alignment: .leading, content: {
                                    
                                    Text("Enter")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 14, weight: .regular))
                                        .opacity(viewModel.gGift.isEmpty ? 1 : 0)
                                    
                                    TextField("", text: $viewModel.gGift)
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                })
                                .padding(6)
                            }
                            
                            VStack(spacing: 15) {
                                
                                Text("Buget")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .regular))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                ZStack(alignment: .leading, content: {
                                    
                                    HStack {
                                        
                                        Text("0")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 14, weight: .regular))
                                            .opacity(viewModel.gBudget.isEmpty ? 1 : 0)
                                        
                                        TextField("", text: $viewModel.gBudget)
                                            .foregroundColor(.black)
                                            .font(.system(size: 14, weight: .regular))
                                     
                                        Text("$")
                                            .foregroundColor(.black)
                                            .font(.system(size: 16, weight: .regular))
                                    }
                                    
                                })
                                .padding(6)
                                
                            }
                        }
                        
                        Rectangle()
                            .fill(.gray.opacity(0.13))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                            .padding(.vertical, 10)

                        Text("Note")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Enter")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(viewModel.gNote.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.gNote)
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .regular))
                            
                        })
                        .padding(6)
                        
                        Rectangle()
                            .fill(.gray.opacity(0.13))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                            .padding(.vertical, 10)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    AddGift(viewModel: GiftViewModel())
}
