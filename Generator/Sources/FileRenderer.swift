/// Type that is able to render a file given a namespace
protocol FileRenderer {
    var directory: String { get }
    var fileNamePrefix: String { get }
    func renderFile(_ namespace: Namespace) throws -> String
}
