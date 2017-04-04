enum ChessPieces {
    case knight
    case rook
}

struct Location : Hashable {
    var x: Int
    var y: Int
    
    var hashValue: Int {
        return x.hashValue &+ y.hashValue
    }
    
    public static func == (lhs: Location, rhs: Location) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

func knightMoves(startingPosition: Location) -> [Location] {
    let possibleMoves: [Location] = [Location(x: startingPosition.x+1, y: startingPosition.y+2),
                                     Location(x: startingPosition.x+1, y: startingPosition.y-2),
                                     Location(x: startingPosition.x+2, y: startingPosition.y+1),
                                     Location(x: startingPosition.x+2, y: startingPosition.y-1),
                                     Location(x: startingPosition.x-1, y: startingPosition.y+2),
                                     Location(x: startingPosition.x-1, y: startingPosition.y-2),
                                     Location(x: startingPosition.x-2, y: startingPosition.y+1),
                                     Location(x: startingPosition.x-2, y: startingPosition.y-1)]
    return possibleMoves
}

func validKnightMoves(startingPosition: Location) -> [Location] {
    var validMoves: [Location] = []
    let possibleMoves: [Location] = [Location(x: startingPosition.x+1, y: startingPosition.y+2),
                                     Location(x: startingPosition.x+1, y: startingPosition.y-2),
                                     Location(x: startingPosition.x+2, y: startingPosition.y+1),
                                     Location(x: startingPosition.x+2, y: startingPosition.y-1),
                                     Location(x: startingPosition.x-1, y: startingPosition.y+2),
                                     Location(x: startingPosition.x-1, y: startingPosition.y-2),
                                     Location(x: startingPosition.x-2, y: startingPosition.y+1),
                                     Location(x: startingPosition.x-2, y: startingPosition.y-1)]
    for finalLocation in possibleMoves {
        if (finalLocation.x >= 0 && finalLocation.y >= 0) && (finalLocation.x < 8 && finalLocation.y < 8) {validMoves.append(finalLocation)}
    }
    return validMoves
}

func validRookMoves(startingPosition: Location) -> [Location] {
    var validMoves: [Location] = []
    let possibleMoves: [Location] = [Location(x: startingPosition.x, y: startingPosition.y+1),
                                     Location(x: startingPosition.x, y: startingPosition.y+2),
                                     Location(x: startingPosition.x, y: startingPosition.y+3),
                                     Location(x: startingPosition.x, y: startingPosition.y+4),
                                     Location(x: startingPosition.x, y: startingPosition.y+5),
                                     Location(x: startingPosition.x, y: startingPosition.y+6),
                                     Location(x: startingPosition.x, y: startingPosition.y+7),
                                     Location(x: startingPosition.x, y: startingPosition.y-1),
                                     Location(x: startingPosition.x, y: startingPosition.y-2),
                                     Location(x: startingPosition.x, y: startingPosition.y-3),
                                     Location(x: startingPosition.x, y: startingPosition.y-4),
                                     Location(x: startingPosition.x, y: startingPosition.y-5),
                                     Location(x: startingPosition.x, y: startingPosition.y-6),
                                     Location(x: startingPosition.x, y: startingPosition.y-7),
                                     Location(x: startingPosition.x+1, y: startingPosition.y),
                                     Location(x: startingPosition.x+2, y: startingPosition.y),
                                     Location(x: startingPosition.x+3, y: startingPosition.y),
                                     Location(x: startingPosition.x+4, y: startingPosition.y),
                                     Location(x: startingPosition.x+5, y: startingPosition.y),
                                     Location(x: startingPosition.x+6, y: startingPosition.y),
                                     Location(x: startingPosition.x+7, y: startingPosition.y),
                                     Location(x: startingPosition.x-1, y: startingPosition.y),
                                     Location(x: startingPosition.x-2, y: startingPosition.y),
                                     Location(x: startingPosition.x-3, y: startingPosition.y),
                                     Location(x: startingPosition.x-4, y: startingPosition.y),
                                     Location(x: startingPosition.x-5, y: startingPosition.y),
                                     Location(x: startingPosition.x-6, y: startingPosition.y),
                                     Location(x: startingPosition.x-7, y: startingPosition.y)]
    for finalLocation in possibleMoves {
        if (finalLocation.x >= 0 && finalLocation.y >= 0) && (finalLocation.x < 8 && finalLocation.y < 8) {validMoves.append(finalLocation)}
    }
    return validMoves
}

func listValidEndLocations(piece: ChessPieces, startingPosition: Location) -> [Location] {
    var possibleMoves: [Location] = []
    var validMoves: [Location] = []
    let knightMove: [Location] = [Location(x: startingPosition.x+1, y: startingPosition.y+2),
                                  Location(x: startingPosition.x+1, y: startingPosition.y-2),
                                  Location(x: startingPosition.x+2, y: startingPosition.y+1),
                                  Location(x: startingPosition.x+2, y: startingPosition.y-1),
                                  Location(x: startingPosition.x-1, y: startingPosition.y+2),
                                  Location(x: startingPosition.x-1, y: startingPosition.y-2),
                                  Location(x: startingPosition.x-2, y: startingPosition.y+1),
                                  Location(x: startingPosition.x-2, y: startingPosition.y-1)]
    let rookMove: [Location] = [Location(x: startingPosition.x, y: startingPosition.y+1),
                                Location(x: startingPosition.x, y: startingPosition.y+2),
                                Location(x: startingPosition.x, y: startingPosition.y+3),
                                Location(x: startingPosition.x, y: startingPosition.y+4),
                                Location(x: startingPosition.x, y: startingPosition.y+5),
                                Location(x: startingPosition.x, y: startingPosition.y+6),
                                Location(x: startingPosition.x, y: startingPosition.y+7),
                                Location(x: startingPosition.x, y: startingPosition.y-1),
                                Location(x: startingPosition.x, y: startingPosition.y-2),
                                Location(x: startingPosition.x, y: startingPosition.y-3),
                                Location(x: startingPosition.x, y: startingPosition.y-4),
                                Location(x: startingPosition.x, y: startingPosition.y-5),
                                Location(x: startingPosition.x, y: startingPosition.y-6),
                                Location(x: startingPosition.x, y: startingPosition.y-7),
                                Location(x: startingPosition.x+1, y: startingPosition.y),
                                Location(x: startingPosition.x+2, y: startingPosition.y),
                                Location(x: startingPosition.x+3, y: startingPosition.y),
                                Location(x: startingPosition.x+4, y: startingPosition.y),
                                Location(x: startingPosition.x+5, y: startingPosition.y),
                                Location(x: startingPosition.x+6, y: startingPosition.y),
                                Location(x: startingPosition.x+7, y: startingPosition.y),
                                Location(x: startingPosition.x-1, y: startingPosition.y),
                                Location(x: startingPosition.x-2, y: startingPosition.y),
                                Location(x: startingPosition.x-3, y: startingPosition.y),
                                Location(x: startingPosition.x-4, y: startingPosition.y),
                                Location(x: startingPosition.x-5, y: startingPosition.y),
                                Location(x: startingPosition.x-6, y: startingPosition.y),
                                Location(x: startingPosition.x-7, y: startingPosition.y)]
    switch piece {
    case .knight:
        possibleMoves = knightMove
    case .rook:
        possibleMoves = rookMove
    }
    for finalLocation in possibleMoves {
        if (finalLocation.x >= 0 && finalLocation.y >= 0) && (finalLocation.x < 8 && finalLocation.y < 8) {validMoves.append(finalLocation)}
    }
    return validMoves
}

