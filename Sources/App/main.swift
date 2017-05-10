import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("base")
}

drop.get("home") { req in
    return try drop.view.make("noname")
    
}

//drop.resource("posts", PostController())

drop.run()
