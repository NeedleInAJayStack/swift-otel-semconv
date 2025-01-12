/// Renders a file that extends `SemConv` with a static property for each attribute name
struct AttributeNameRenderer: FileRenderer {
    let directory = "AttributeNames"
    let fileNamePrefix = "SemConv+"
    
    func renderFile(_ namespace: Namespace) throws -> String {
        return """
        extension SemConv {
        \(try renderNamespace(namespace, indent: 4))
        }
        """
    }

    private func renderNamespace(_ namespace: Namespace, indent: Int) throws -> String {
        guard let namespaceName = namespace.id.split(separator: ".").last else {
            throw GeneratorError.namespaceNameNotFound(namespace.id)
        }
        let enumName = swiftName(String(namespaceName))
        
        var result = "/// `\(namespace.id)` namespace"
        result.append("\npublic enum \(enumName) {")
        try result.append(
            "\n" +
            namespace.attributes.values.sorted { $0.id < $1.id }.map { attribute in
                try renderAttribute(attribute, namespace, indent: 4)
            }.joined(separator: "\n\n")
        )
        try result.append(
            "\n\n" +
            namespace.subNamespaces.values.sorted { $0.id < $1.id }.map { child in
                try renderNamespace(child, indent: 4)
            }.joined(separator: "\n\n")
        )
        result.append("\n}")
        return result
            .split(separator: "\n", omittingEmptySubsequences: false)
            .map { String.init(repeating: " ", count: indent) + $0 }
            .joined(separator: "\n")
    }

    private func renderAttribute(_ attribute: Attribute, _ namespace: Namespace, indent: Int) throws -> String {
        guard let attributeName = attribute.id.split(separator: ".").last else {
            throw GeneratorError.attributeNameNotFound(namespace.id)
        }
        var propertyName = String(attributeName)
        // In the case where we have both an attribute and a namespace overlapping (deployment.environment & deployment.environment.name), the attribute gets an underscore in order to avoid name clobbering.
        if namespace.subNamespaces[propertyName] != nil {
            propertyName = "_\(propertyName)"
        }
        propertyName = swiftName(propertyName)
        
        var result = renderDocs(attribute)
        if let deprecatedMessage = attribute.deprecated {
            result.append("\n@available(*, deprecated, message: \"\(deprecatedMessage)\")")
        }
        result.append("\npublic static let \(propertyName) = \"\(attribute.id)\"")


        return result.split(separator: "\n", omittingEmptySubsequences: false)
            .map { String.init(repeating: " ", count: indent) + $0 }
            .joined(separator: "\n")
    }
    
    private func renderDocs(_ attribute: Attribute) -> String {
        var result = "`\(attribute.id)`"
        if let brief = attribute.brief {
            result.append("\n\n\(brief.replacingOccurrences(of: "\n", with: " "))")
        }
        result.append("\n\n- Stability: \( attribute.stability )")
        
        if let attributeType = attribute.type as? Attribute.EnumType {
            result.append("\n\n- Type: enum")
            for member in attributeType.members {
                result.append("\n    - `\(member.value)`")
                if let brief = member.brief {
                    result.append(": \(brief)")
                }
            }
        } else {
            result.append("\n\n- Type: \(attribute.type)")
        }
        
        if let note = attribute.note {
            result.append("\n\n\(note.replacingOccurrences(of: "\n", with: " "))")
        }
        
        if let examples = attribute.examples {
            if examples.count == 1 {
                result.append("\n\n- Example: `\( examples[0] )`")
            } else {
                result.append("\n\n- Examples:")
                for example in examples {
                    result.append("\n    - `\(example)`")
                }
            }
        }
        
        return result.split(separator: "\n", omittingEmptySubsequences: false)
            .map { "/// " + $0 }
            .joined(separator: "\n")
    }
}
