// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `os` namespace
    var os: OsAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct OsAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `os.build_id`: Unique identifier for a particular build or compilation of the operating system.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `TQ3C.230805.001.B2`
            ///     - `20E247`
            ///     - `22621`
            public var build_id: Self.Key<String> { .init(name: SemConv.os.build_id) }

            /// `os.description`: Human readable (not intended to be parsed) OS version information, like e.g. reported by `ver` or `lsb_release -a` commands.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `Microsoft Windows [Version 10.0.18363.778]`
            ///     - `Ubuntu 18.04.1 LTS`
            public var description: Self.Key<String> { .init(name: SemConv.os.description) }

            /// `os.name`: Human readable operating system name.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `iOS`
            ///     - `Android`
            ///     - `Ubuntu`
            public var name: Self.Key<String> { .init(name: SemConv.os.name) }

            /// `os.type`: The operating system type.
            ///
            /// - Stability: experimental
            ///
            /// - Type: enum
            ///     - `windows`: Microsoft Windows
            ///     - `linux`: Linux
            ///     - `darwin`: Apple Darwin
            ///     - `freebsd`: FreeBSD
            ///     - `netbsd`: NetBSD
            ///     - `openbsd`: OpenBSD
            ///     - `dragonflybsd`: DragonFly BSD
            ///     - `hpux`: HP-UX (Hewlett Packard Unix)
            ///     - `aix`: AIX (Advanced Interactive eXecutive)
            ///     - `solaris`: SunOS, Oracle Solaris
            ///     - `z_os`: IBM z/OS
            public var type: Self.Key<TypeEnum> { .init(name: SemConv.os.type) }

            public enum TypeEnum: String, SpanAttributeConvertible {
                /// `windows`: Microsoft Windows
                case windows
                /// `linux`: Linux
                case linux
                /// `darwin`: Apple Darwin
                case darwin
                /// `freebsd`: FreeBSD
                case freebsd
                /// `netbsd`: NetBSD
                case netbsd
                /// `openbsd`: OpenBSD
                case openbsd
                /// `dragonflybsd`: DragonFly BSD
                case dragonflybsd
                /// `hpux`: HP-UX (Hewlett Packard Unix)
                case hpux
                /// `aix`: AIX (Advanced Interactive eXecutive)
                case aix
                /// `solaris`: SunOS, Oracle Solaris
                case solaris
                /// `z_os`: IBM z/OS
                case z_os
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(rawValue)
                }
            }

            /// `os.version`: The version string of the operating system as defined in [Version Attributes](/docs/resource/README.md#version-attributes).
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `14.2.1`
            ///     - `18.04.1`
            public var version: Self.Key<String> { .init(name: SemConv.os.version) }
        }
    }
}
