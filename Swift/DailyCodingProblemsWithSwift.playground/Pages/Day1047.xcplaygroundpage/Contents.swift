//This problem was asked by Stripe.
//
//Write a map implementation with a get function that lets you retrieve the value of a key at a particular time.
//
//It should contain the following methods:
//
//set(key, value, time): sets key to value for t = time.
//get(key, time): gets the key at t = time.
//The map should work like this. If we set a key at a particular time, it will maintain that value forever or until it gets set at a later time. In other words, when we get a key at a time, it should return the value that was set for that key set at the most recent time.
//

//Consider the following examples:
//
//d.set(1, 1, 0) # set key 1 to value 1 at time 0
//d.set(1, 2, 2) # set key 1 to value 2 at time 2
//d.get(1, 1) # get key 1 at time 1 should be 1
//d.get(1, 3) # get key 1 at time 3 should be 2

//d.set(1, 1, 5) # set key 1 to value 1 at time 5
//d.get(1, 0) # get key 1 at time 0 should be null
//d.get(1, 10) # get key 1 at time 10 should be 1

//d.set(1, 1, 0) # set key 1 to value 1 at time 0
//d.set(1, 2, 0) # set key 1 to value 2 at time 0
//d.get(1, 0) # get key 1 at time 0 should be 2


class TimedMapVal {
    var time: Int
    var value: Int
    init(time: Int, value: Int) {
        self.time = time
        self.value = value
    }
}

class TimedMap{
    private var timeMap: [Int: [TimedMapVal]] = [:]
    
    func setVal(key: Int, value: Int, time: Int){
        if timeMap[key] == nil {
            timeMap[key] = [TimedMapVal(time: time, value: value)]
        } else {
            timeMap[key]?.append(TimedMapVal(time: time, value: value) )
        }
        
    }
    
    func getVal(key: Int, time: Int) -> Int? {
        print("Finding value at time \(time) and Key: \(key)")
        
        var returnVal: Int? = nil
        var returnValTime: Int? = nil
        var valueAndTimeList: [TimedMapVal]? = timeMap[key]
        
        if let safeValueAndTimeList = valueAndTimeList {
            safeValueAndTimeList.forEach { element in
                print("For key: \(key) - Value is \(element.value) and time is \(element.time)")
                
                var storedVal = element.value
                var storedTime = element.time
                
                if time >= storedTime {
                    returnVal = storedVal
                }
            }
        }
        
        return returnVal
    }
}




var timedMap = TimedMap()

timedMap.setVal(key: 1, value: 1, time: 0)
timedMap.setVal(key: 1, value: 2, time: 0)
var getVal = timedMap.getVal(key: 1, time: 0)

print("Value at time: \(getVal ?? -100)")
