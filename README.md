# DisplayData
Struct for VC

## How to use
In a presenter

```swift
    
    func updateUIWith(_ items: [Deal]) {
        
        let dealsDisplayData = dealsDisplayDataWith(items)
        view.displayDeals(dealsDisplayData)
    }
    
    
    func dealsDisplayDataWith(_ items: [Deal]) -> DealGridDisplayData {
        let collection = DealDisplayDataCollection()
        collection.addDeals(items)
        return collection.data
    }
    
```
