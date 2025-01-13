// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `system` namespace
    var system: SystemAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct SystemAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `system.device`: The device identifier
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `(identifier)`
            public var device: Self.Key<String> { .init(name: SemConv.system.device) }
        }

        /// `system.cpu` namespace
        public var cpu: CpuAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CpuAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.cpu.logical_number`: The logical CPU number [0..n-1]
                ///
                /// - Stability: experimental
                ///
                /// - Type: int
                ///
                /// - Example: `1`
                public var logical_number: Self.Key<Int> { .init(name: SemConv.system.cpu.logical_number) }

                /// `system.cpu.state`: Deprecated, use `cpu.mode` instead.
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `user`
                ///     - `system`
                ///     - `nice`
                ///     - `idle`
                ///     - `iowait`
                ///     - `interrupt`
                ///     - `steal`
                ///
                /// - Examples:
                ///     - `idle`
                ///     - `interrupt`
                @available(*, deprecated, message: "Replaced by `cpu.mode`")
                public var state: Self.Key<StateEnum> { .init(name: SemConv.system.cpu.state) }

                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `user`
                    case user
                    /// `system`
                    case system
                    /// `nice`
                    case nice
                    /// `idle`
                    case idle
                    /// `iowait`
                    case iowait
                    /// `interrupt`
                    case interrupt
                    /// `steal`
                    case steal
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }
            }
        }

        /// `system.filesystem` namespace
        public var filesystem: FilesystemAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct FilesystemAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.filesystem.mode`: The filesystem mode
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// - Example: `rw, ro`
                public var mode: Self.Key<String> { .init(name: SemConv.system.filesystem.mode) }

                /// `system.filesystem.mountpoint`: The filesystem mount path
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// - Example: `/mnt/data`
                public var mountpoint: Self.Key<String> { .init(name: SemConv.system.filesystem.mountpoint) }

                /// `system.filesystem.state`: The filesystem state
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `used`
                ///     - `free`
                ///     - `reserved`
                ///
                /// - Example: `used`
                public var state: Self.Key<StateEnum> { .init(name: SemConv.system.filesystem.state) }

                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `used`
                    case used
                    /// `free`
                    case free
                    /// `reserved`
                    case reserved
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }

                /// `system.filesystem.type`: The filesystem type
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `fat32`
                ///     - `exfat`
                ///     - `ntfs`
                ///     - `refs`
                ///     - `hfsplus`
                ///     - `ext4`
                ///
                /// - Example: `ext4`
                public var type: Self.Key<TypeEnum> { .init(name: SemConv.system.filesystem.type) }

                public enum TypeEnum: String, SpanAttributeConvertible {
                    /// `fat32`
                    case fat32
                    /// `exfat`
                    case exfat
                    /// `ntfs`
                    case ntfs
                    /// `refs`
                    case refs
                    /// `hfsplus`
                    case hfsplus
                    /// `ext4`
                    case ext4
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }
            }
        }

        /// `system.memory` namespace
        public var memory: MemoryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct MemoryAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.memory.state`: The memory state
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `used`
                ///     - `free`
                ///     - `shared`
                ///     - `buffers`
                ///     - `cached`
                ///
                /// - Examples:
                ///     - `free`
                ///     - `cached`
                public var state: Self.Key<StateEnum> { .init(name: SemConv.system.memory.state) }

                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `used`
                    case used
                    /// `free`
                    case free
                    /// `shared`
                    @available(*, deprecated, message: "Removed, report shared memory usage with `metric.system.memory.shared` metric")
                    case shared
                    /// `buffers`
                    case buffers
                    /// `cached`
                    case cached
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }
            }
        }

        /// `system.network` namespace
        public var network: NetworkAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct NetworkAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.network.state`: A stateless protocol MUST NOT set this attribute
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `close`
                ///     - `close_wait`
                ///     - `closing`
                ///     - `delete`
                ///     - `established`
                ///     - `fin_wait_1`
                ///     - `fin_wait_2`
                ///     - `last_ack`
                ///     - `listen`
                ///     - `syn_recv`
                ///     - `syn_sent`
                ///     - `time_wait`
                ///
                /// - Example: `close_wait`
                public var state: Self.Key<StateEnum> { .init(name: SemConv.system.network.state) }

                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `close`
                    case close
                    /// `close_wait`
                    case close_wait
                    /// `closing`
                    case closing
                    /// `delete`
                    case delete
                    /// `established`
                    case established
                    /// `fin_wait_1`
                    case fin_wait_1
                    /// `fin_wait_2`
                    case fin_wait_2
                    /// `last_ack`
                    case last_ack
                    /// `listen`
                    case listen
                    /// `syn_recv`
                    case syn_recv
                    /// `syn_sent`
                    case syn_sent
                    /// `time_wait`
                    case time_wait
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }
            }
        }

        /// `system.paging` namespace
        public var paging: PagingAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct PagingAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.paging.direction`: The paging access direction
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `in`
                ///     - `out`
                ///
                /// - Example: `in`
                public var direction: Self.Key<DirectionEnum> { .init(name: SemConv.system.paging.direction) }

                public enum DirectionEnum: String, SpanAttributeConvertible {
                    /// `in`
                    case `in`
                    /// `out`
                    case out
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }

                /// `system.paging.state`: The memory paging state
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `used`
                ///     - `free`
                ///
                /// - Example: `free`
                public var state: Self.Key<StateEnum> { .init(name: SemConv.system.paging.state) }

                public enum StateEnum: String, SpanAttributeConvertible {
                    /// `used`
                    case used
                    /// `free`
                    case free
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }

                /// `system.paging.type`: The memory paging type
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `major`
                ///     - `minor`
                ///
                /// - Example: `minor`
                public var type: Self.Key<TypeEnum> { .init(name: SemConv.system.paging.type) }

                public enum TypeEnum: String, SpanAttributeConvertible {
                    /// `major`
                    case major
                    /// `minor`
                    case minor
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }
            }
        }

        /// `system.process` namespace
        public var process: ProcessAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ProcessAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.process.status`: The process state, e.g., [Linux Process State Codes](https://man7.org/linux/man-pages/man1/ps.1.html#PROCESS_STATE_CODES)
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `running`
                ///     - `sleeping`
                ///     - `stopped`
                ///     - `defunct`
                ///
                /// - Example: `running`
                public var status: Self.Key<StatusEnum> { .init(name: SemConv.system.process.status) }

                public enum StatusEnum: String, SpanAttributeConvertible {
                    /// `running`
                    case running
                    /// `sleeping`
                    case sleeping
                    /// `stopped`
                    case stopped
                    /// `defunct`
                    case defunct
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }
            }
        }

        /// `system.processes` namespace
        public var processes: ProcessesAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ProcessesAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.processes.status`: Deprecated, use `system.process.status` instead.
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `running`
                ///     - `sleeping`
                ///     - `stopped`
                ///     - `defunct`
                ///
                /// - Example: `running`
                @available(*, deprecated, message: "Replaced by `system.process.status`.")
                public var status: Self.Key<StatusEnum> { .init(name: SemConv.system.processes.status) }

                public enum StatusEnum: String, SpanAttributeConvertible {
                    /// `running`
                    case running
                    /// `sleeping`
                    case sleeping
                    /// `stopped`
                    case stopped
                    /// `defunct`
                    case defunct
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }
            }
        }
    }
}
