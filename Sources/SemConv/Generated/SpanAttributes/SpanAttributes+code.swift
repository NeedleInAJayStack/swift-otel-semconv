// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `code` namespace
    var code: CodeAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct CodeAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `code.column`: The column number in `code.filepath` best representing the operation. It SHOULD point within the code unit named in `code.function`.
            ///
            /// - Stability: experimental
            ///
            /// - Type: int
            ///
            /// - Example: `16`
            public var column: Self.Key<Int> { .init(name: SemConv.code.column) }

            /// `code.filepath`: The source code file name that identifies the code unit as uniquely as possible (preferably an absolute file path).
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `/usr/local/MyApplication/content_root/app/index.php`
            public var filepath: Self.Key<String> { .init(name: SemConv.code.filepath) }

            /// `code.function`: The method or function name, or equivalent (usually rightmost part of the code unit's name).
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `serveRequest`
            public var function: Self.Key<String> { .init(name: SemConv.code.function) }

            /// `code.lineno`: The line number in `code.filepath` best representing the operation. It SHOULD point within the code unit named in `code.function`.
            ///
            /// - Stability: experimental
            ///
            /// - Type: int
            ///
            /// - Example: `42`
            public var lineno: Self.Key<Int> { .init(name: SemConv.code.lineno) }

            /// `code.namespace`: The "namespace" within which `code.function` is defined. Usually the qualified class or module name, such that `code.namespace` + some separator + `code.function` form a unique identifier for the code unit.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `com.example.MyHttpService`
            public var namespace: Self.Key<String> { .init(name: SemConv.code.namespace) }

            /// `code.stacktrace`: A stacktrace as a string in the natural representation for the language runtime. The representation is to be determined and documented by each language SIG.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `at com.example.GenerateTrace.methodB(GenerateTrace.java:13)\n at com.example.GenerateTrace.methodA(GenerateTrace.java:9)\n at com.example.GenerateTrace.main(GenerateTrace.java:5)
            /// `
            public var stacktrace: Self.Key<String> { .init(name: SemConv.code.stacktrace) }
        }
    }
}
