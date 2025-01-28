//
//  AddChecklist.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI

struct AddChecklist: View {
    
    @StateObject var viewModel: CheckListViewModel
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("New checklist item")
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
                            
                            viewModel.addCheck()
                            
                            viewModel.chName = ""
                            viewModel.chPer = ""
                            viewModel.chNote = ""
                            
                            viewModel.fetchChecks()
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isAdd = false
                            }
                            
                        }, label: {
                            
                            Text("Save")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 17, weight: .medium))
                        })
                        .opacity(viewModel.chName.isEmpty || viewModel.chPer.isEmpty ? 0.5 : 1)
                        .disabled(viewModel.chName.isEmpty || viewModel.chPer.isEmpty ? true : false)
                    }
                }
                
                Rectangle()
                    .fill(.gray.opacity(0.13))
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .padding(.bottom, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 15) {
                        
                        Text("Name")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Enter")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(viewModel.chName.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.chName)
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .regular))
                            
                        })
                        .padding(6)
                        
                        Rectangle()
                            .fill(.gray.opacity(0.13))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                            .padding(.vertical, 10)
                        
                        HStack {
                            
                            VStack(spacing: 15) {
                                
                                Text("Deadline")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .regular))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                DatePicker("", selection: $viewModel.chDead, displayedComponents: .date)
                                    .labelsHidden()
                                    .padding(6)
                            }
                            
                            VStack(spacing: 15) {
                                
                                Text("Responsible person")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .regular))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                ZStack(alignment: .leading, content: {
                                    
                                    Text("Enter")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 14, weight: .regular))
                                        .opacity(viewModel.chPer.isEmpty ? 1 : 0)
                                    
                                    TextField("", text: $viewModel.chPer)
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                })
                                .padding(13)
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
                                .opacity(viewModel.chNote.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.chNote)
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
    AddChecklist(viewModel: CheckListViewModel())
}
