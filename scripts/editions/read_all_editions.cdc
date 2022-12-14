import AllDay from 0xf8d6e0586b0a20c7
// This script returns all the Edition structs.
// This will be *long*.

pub fun main(): [AllDay.EditionData] {
    let editions: [AllDay.EditionData] = []
    var id: UInt64 = 1
    // Note < , as nextEditionID has not yet been used
    while id < AllDay.nextEditionID {
        editions.append(AllDay.getEditionData(id: id))
        id = id + 1
    }
    return editions
}

