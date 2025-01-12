# Swift Opentelemetry Semantic Conventions

[![SemConv][semconv-badge]][semconv-url]

This repo contains Swift support for the [OpenTelemetry Semantic Convention Attribute Registry](https://opentelemetry.io/docs/specs/semconv/attributes-registry/). Currently only static string attribute names are provided.

Using this repo has the following benefits:

1. Avoids misspellings or propagation of nonstandard attribute names
2. OpenTelemetry deprecation is automatically marked in Swift
3. Attribute documentation is automatically integrated into code editors

## Usage

To use this package, simply reference the static properties from the package when creating span attributes ore log metadata instead of string literals:

### Span Attributes

```swift
withSpan("showAttributes") { span in
  span.attributes[SemConv.http.request.method] = "POST"
  span.attributes[SemConv.http.response.status_code] = 200
}
```

### Logging Metadata

```swift
logger[metadataKey: .init(name: SemConv.http.request.method)] = "POST"
logger[metadataKey: .init(name: SemConv.http.response.status_code)] = "200"
```

## Contributing

### Generation

For details on generation, see the [Generator](./Generator) subdirectory.

OpenTelemetry provides the [Weave semantic convention generation tool](https://github.com/open-telemetry/weaver/blob/main/crates/weaver_forge/README.md).
However, this package uses a Swift generator instead for the following reasons:

- To support the desired API where Swift usage nests namespaces with the `.` notation just like the attributes, a namespace tree must be constructed and traversed. Doing this in the Weaver Jinja templating language is difficult.
- Swift will be more familiar than Jinja templates to users of this package, leading to easier maintenance.

### Versioning

This package is versioned independently from semantic conventions, but the supported semantic convention version will be documented clearly.

[semconv-badge]: https://img.shields.io/badge/semconv-1.28.0-blue.svg
[semconv-url]: https://github.com/open-telemetry/semantic-conventions.git
