//This problem was asked by Twitter.
//
//A teacher must divide a class of students into two teams to play dodgeball. Unfortunately, not all the kids get along, and several refuse to be put on the same team as that of their enemies.
//
//Given an adjacency list of students and their enemies, write an algorithm that finds a satisfactory pair of teams, or returns False if none exists.
//
//For example, given the following enemy graph you should return the teams {0, 1, 4, 5} and {2, 3}.
//
//students = {
//    0: [3],
//    1: [2],
//    2: [1, 4],
//    3: [0, 4, 5],
//    4: [2, 3],
//    5: [3]
//}
//On the other hand, given the input below, you should return False.
//
//students = {
//    0: [3],
//    1: [2],
//    2: [1, 3, 4],
//    3: [0, 2, 4, 5],
//    4: [2, 3],
//    5: [3]
//}

class EnemyCircle {
    var adjacencyList: [Int: [Int]] = [:]
    
    func addEdge(_ vertex1: Int, _ vertex2: Int) {
        addEdgeHelper(vertex1, vertex2)
        addEdgeHelper(vertex2, vertex1)
    }
    
    private func addEdgeHelper(_ from: Int, _ to: Int) {
        if adjacencyList[from] == nil {
            adjacencyList[from] = [to]
        } else {
            if (adjacencyList[from] ?? []) .contains(to){
                return
            }
            adjacencyList[from]?.append(to)
        }
    }
    
    func printGraph() {
        for (vertex, neighbors) in adjacencyList {
            print("\(vertex) -> \(neighbors)")
        }
    }
}


var groupOne: [Int] = []
var groupTwo: [Int] = []

func assignGroup(enemyList : [Int], userId: Int) -> Bool {
    var containsEnemyInGroupOne = false
    var containsEnemyInGroupTwo = false
    
    var isAssignedToAGroup = false
    enemyList.forEach {
        enemy in
        if groupOne.contains(enemy) {
            containsEnemyInGroupOne = true
        }
        
        if groupTwo.contains(enemy) {
            containsEnemyInGroupTwo = true
        }
        
        if containsEnemyInGroupOne, containsEnemyInGroupTwo {
            isAssignedToAGroup = false
            return
        }
        
        if containsEnemyInGroupOne {
            if !groupTwo.contains(userId) {
                groupTwo.append(userId)
            }
            isAssignedToAGroup = true
            return
        } else {
            if !groupOne.contains(userId){
                groupOne.append(userId)
            }
            isAssignedToAGroup = true
            return
        }
    }
    return isAssignedToAGroup
}

func makeGroupSetOne() -> EnemyCircle {
    let graph = EnemyCircle()
    graph.addEdge(0, 3)
    graph.addEdge(1, 2)
    graph.addEdge(2, 1)
    graph.addEdge(2, 4)
    graph.addEdge(3, 0)
    graph.addEdge(3, 4)
    graph.addEdge(3, 5)
    graph.addEdge(4, 2)
    graph.addEdge(4, 3)
    graph.addEdge(5, 3)
    graph.printGraph()
    return graph
}
func makeGroupSetTwo() -> EnemyCircle {
    let graph = EnemyCircle()
    graph.addEdge(0, 3)
    graph.addEdge(1, 2)
    graph.addEdge(2, 1)
    graph.addEdge(2, 3)
    graph.addEdge(2, 4)
    graph.addEdge(3, 0)
    graph.addEdge(3, 2)
    graph.addEdge(3, 4)
    graph.addEdge(3, 5)
    graph.addEdge(4, 2)
    graph.addEdge(4, 3)
    graph.addEdge(5, 3)
    graph.printGraph()
    return graph
}



var enemryCircleGroupsForUser = makeGroupSetOne()
//var enemryCircleGroupsForUser = makeGroupSetTwo()

var userCountWhoHaveBeenAssignedToAGroup = 0
var totalUsers = 6

for (user, enemies) in enemryCircleGroupsForUser.adjacencyList {
    var hasBeenAssignedToAGroup: Bool = assignGroup(enemyList: enemies, userId: user)
    if hasBeenAssignedToAGroup {
        userCountWhoHaveBeenAssignedToAGroup += 1
    }
}

if userCountWhoHaveBeenAssignedToAGroup == totalUsers {
    print("GroupOne : \(groupOne)")
    print("GroupTwo : \(groupTwo)")
} else{
    print("Cannot make a stable group")
    print("Total number of users who have been assigned to a group: \(userCountWhoHaveBeenAssignedToAGroup)")
}
