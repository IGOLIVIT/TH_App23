//
//  GiftViewModel.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI
import CoreData

final class GiftViewModel: ObservableObject {
    
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

    @Published var gGift: String = ""
    @Published var gBudget: String = ""
    @Published var gNote: String = ""
    
    @Published var gifts: [GiftModel] = []
    @Published var selectedGift: GiftModel?

    func addGift() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "GiftModel", into: context) as! GiftModel

        loan.gGift = gGift
        loan.gBudget = gBudget
        loan.gNote = gNote

        CoreDataStack.shared.saveContext()
    }

    func fetchGifts() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<GiftModel>(entityName: "GiftModel")

        do {

            let result = try context.fetch(fetchRequest)

            self.gifts = result

        } catch let error as NSError {

            print("catch")

            print("Error fetching persons: \(error), \(error.userInfo)")

            self.gifts = []
        }
    }
}
