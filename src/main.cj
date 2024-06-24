from net import http.*

main() {
    let server = ServerBuilder().addr("127.0.0.1").port(8080).build()

    server.distributor.register(
        "/",
        {
            context =>
            let response = context.responseBuilder

            response.header("Context-Type", "text/html")
            response.body("<!DOCTYPE html><h1>Hello World!<h1>")
        }
    )

    server.serve()
}
