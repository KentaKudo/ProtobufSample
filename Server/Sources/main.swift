import Kitura
import SwiftProtobuf

let router = Router()

var oasis = RockBand(id: 1, name: "Oasis", members: [
    Member(id: 1, name: "Liam Gallagher", instrument: .vocal),
    Member(id: 2, name: "Noel Gallagher", instrument: .guitar),
    Member(id: 3, name: "Gem Archer",     instrument: .guitar),
    Member(id: 4, name: "Andy Bell",      instrument: .bass),
    Member(id: 5, name: "Chris Sharrock", instrument: .drums)
])

router.get("/") { request, response, next in
    
    let acceptType = request.headers["Accept"]
    
    if acceptType == "application/octet-stream" {
        response.headers["Content-Type"] = "application/octet-stream"
        response.send(data: try oasis.serializeProtobuf())
    } else {
        response.headers["Content-Type"] = "application/json; charset=UTF-8"
        response.send(try oasis.serializeJSON())
    }
    
    next()
}


Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
