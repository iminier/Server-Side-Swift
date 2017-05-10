import Vapor

let drop = Droplet()

drop.get { req in
    let cow = ["title" : "try to be a string on the screen"] // does this have to be a dictionary?
    return try drop.view.make("noname", Node(node: cow))
    
}

//drop.resource("posts", PostController())

drop.run()
