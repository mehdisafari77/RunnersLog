//
//  EntryController.swift
//  RunnersLog
//
//  Created by Ivan Ramirez on 1/26/22.
//

import CoreData

class EntryController {





       func deleteEverything() {

           // Specify a batch to delete with a fetch request
           let fetchRequest: NSFetchRequest<NSFetchRequestResult>
        fetchRequest = NSFetchRequest(entityName: "Entry")

        // Create a batch delete request for the
        // fetch request
        let deleteRequest = NSBatchDeleteRequest(
            fetchRequest: fetchRequest
        )

        // Specify the result of the NSBatchDeleteRequest
        // should be the NSManagedObject IDs for the
        // deleted objects
        deleteRequest.resultType = .resultTypeObjectIDs

        // Get a reference to a managed object context
        let context = CoreDataStack.managedObjectContext

        // Perform the batch delete
        do {
        let batchDelete = try context.execute(deleteRequest)
            as? NSBatchDeleteResult

        guard let deleteResult = batchDelete?.result
            as? [NSManagedObjectID]
            else { return }

        let deletedObjects: [AnyHashable: Any] = [
            NSDeletedObjectsKey: deleteResult
        ]

        // Merge the delete changes into the managed
        // object context
        NSManagedObjectContext.mergeChanges(
            fromRemoteContextSave: deletedObjects,
            into: [context]
        )
        } catch {
            print(error.localizedDescription)
        }

    }

}
