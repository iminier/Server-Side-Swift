import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("base")
}

//drop.resource("posts", PostController())

drop.run()
