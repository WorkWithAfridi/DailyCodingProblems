//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

struct Employee {
    var name: String
    var id: Int
    var salary: Double
}

var emoloyeeList: [Employee] = [
    Employee(name: "Sam Tucker", id: 23, salary: 27000),
    Employee(name: "Mr Pitis", id: 0, salary: 5000),
    Employee(name: "Maria", id: 22, salary: 35000),
    Employee(name: "Aurora", id: 35, salary: 30000)
]

func sort_employee(listOfEmployee: [Employee], sortColumnId: Int) -> [Employee] {
    
        var sortedListOfEmployee: [Employee] = emoloyeeList.sorted { employeeA, employeeB in
            if sortColumnId == 0 {
                return  employeeA.name < employeeB.name
            } else if sortColumnId == 1 {
                return    employeeA.id < employeeB.id
            } else {
                return   employeeA.salary < employeeB.salary
            }
        }
    
        sortedListOfEmployee.forEach { employee in
            debugPrint("Name: \(employee.name) - Id: \(employee.id) - Salary: \(employee.salary)")
        }
    
    return sortedListOfEmployee
}


func sortEmployeeListWithoutFactoryFuncs(listOfEmployee: [Employee], sortColumnId: Int) -> [Employee] {
    
    var sortedListOfEmployee: [Employee] = []
    
    var modifiableListOfEmployee : [Employee] = []
    modifiableListOfEmployee.append(contentsOf: listOfEmployee)
    
    while modifiableListOfEmployee.count > 0 {
        
        var smallestEmplpoyee: Employee? = nil
        
        modifiableListOfEmployee.forEach { employee in
            if smallestEmplpoyee == nil {
                smallestEmplpoyee = employee
                return
            }
            
            if sortColumnId == 0 &&  smallestEmplpoyee!.name > employee.name {
                smallestEmplpoyee = employee
            } else if sortColumnId == 1 &&  smallestEmplpoyee!.id > employee.id {
                smallestEmplpoyee = employee
            } else if sortColumnId == 2 &&  smallestEmplpoyee!.salary > employee.salary {
                smallestEmplpoyee = employee
            }
        }
        
        sortedListOfEmployee.append(smallestEmplpoyee!)
        modifiableListOfEmployee.removeAll { removeEmployee in
            removeEmployee.id == smallestEmplpoyee!.id
        }
    }
    
    sortedListOfEmployee.forEach { employee in
        debugPrint("Name: \(employee.name) - Id: \(employee.id) - Salary: \(employee.salary)")
    }
    
    return sortedListOfEmployee
}



sort_employee(listOfEmployee: emoloyeeList, sortColumnId: 2)
debugPrint("---------------------------------")
sortEmployeeListWithoutFactoryFuncs(listOfEmployee: emoloyeeList, sortColumnId: 2)
