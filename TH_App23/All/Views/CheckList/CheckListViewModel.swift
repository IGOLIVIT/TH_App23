//
//  CheckListViewModel.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI
import CoreData

final class CheckListViewModel: ObservableObject {
    
    @Published var isDetailVisible1 = false
    @Published var isDetailVisible2 = false
    @Published var isDetailVisible3 = false
    @Published var isDetailVisible4 = false
    @Published var isDetailVisible5 = false
    @Published var isDetailVisible6 = false
    @Published var isDetailVisible7 = false
    @Published var isDetailVisible8 = false

    @Published var isAdd: Bool = false
    @Published var isDetail: Bool = false
    @Published var isDelete: Bool = false
    @Published var isSettings: Bool = false

    @Published var chName: String = ""
    @Published var chDead: Date = Date()
    @Published var chPer: String = ""
    @Published var chNote: String = ""
    
    @Published var checklists: [CheckModel] = []
    @Published var selectedCheck: CheckModel?

    func addCheck() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "CheckModel", into: context) as! CheckModel

        loan.chName = chName
        loan.chDead = chDead
        loan.chPer = chPer
        loan.chNote = chNote

        CoreDataStack.shared.saveContext()
    }

    func fetchChecks() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<CheckModel>(entityName: "CheckModel")

        do {

            let result = try context.fetch(fetchRequest)

            self.checklists = result

        } catch let error as NSError {

            print("catch")

            print("Error fetching persons: \(error), \(error.userInfo)")

            self.checklists = []
        }
    }
    
    @AppStorage("savedCheck") var savedCheck: [String] = []
    
    func isHas(model: CheckModel) -> Bool {
        
            return savedCheck.contains(model.chName ?? "")

    }
    
    func favoritesManager(model: CheckModel) {
        
                        if savedCheck.contains(model.chName ?? "") {
                
                if let indexer = savedCheck.firstIndex(of: model.chName ?? "") {
                    
                    savedCheck.remove(at: indexer)
                    
                }
                
            } else {
                
                savedCheck.append(model.chName ?? "")
                
            }
    }

}

