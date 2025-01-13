// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `db` namespace
    var db: DbAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct DbAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `db.connection_string`: Deprecated, use `server.address`, `server.port` attributes instead.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `Server=(localdb)\v11.0;Integrated Security=true;`
            @available(*, deprecated, message: "Replaced by `server.address` and `server.port`.")
            public var connection_string: Self.Key<String> { .init(name: SemConv.db.connection_string) }

            /// `db.name`: Deprecated, use `db.namespace` instead.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `customers`
            ///     - `main`
            @available(*, deprecated, message: "Replaced by `db.namespace`.")
            public var name: Self.Key<String> { .init(name: SemConv.db.name) }

            /// `db.namespace`: The name of the database, fully qualified within the server address and port.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// If a database system has multiple namespace components, they SHOULD be concatenated (potentially using database system specific conventions) from most general to most specific namespace component, and more specific namespaces SHOULD NOT be captured without the more general namespaces, to ensure that "startswith" queries for the more general namespaces will be valid. Semantic conventions for individual database systems SHOULD document what `db.namespace` means in the context of that system. It is RECOMMENDED to capture the value as provided by the application without attempting to do any case normalization. This attribute has stability level RELEASE CANDIDATE.
            ///
            /// - Examples:
            ///     - `customers`
            ///     - `test.users`
            public var namespace: Self.Key<String> { .init(name: SemConv.db.namespace) }

            /// `db.operation`: Deprecated, use `db.operation.name` instead.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `findAndModify`
            ///     - `HMSET`
            ///     - `SELECT`
            @available(*, deprecated, message: "Replaced by `db.operation.name`.")
            public var _operation: Self.Key<String> { .init(name: SemConv.db._operation) }

            /// `db.statement`: The database statement being executed.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `SELECT * FROM wuser_table`
            ///     - `SET mykey "WuValue"`
            @available(*, deprecated, message: "Replaced by `db.query.text`.")
            public var statement: Self.Key<String> { .init(name: SemConv.db.statement) }

            /// `db.system`: The database management system (DBMS) product as identified by the client instrumentation.
            ///
            /// - Stability: experimental
            ///
            /// - Type: enum
            ///     - `other_sql`: Some other SQL database. Fallback only. See notes.
            ///     - `adabas`: Adabas (Adaptable Database System)
            ///     - `cache`: Deprecated, use `intersystems_cache` instead.
            ///     - `intersystems_cache`: InterSystems Caché
            ///     - `cassandra`: Apache Cassandra
            ///     - `clickhouse`: ClickHouse
            ///     - `cloudscape`: Deprecated, use `other_sql` instead.
            ///     - `cockroachdb`: CockroachDB
            ///     - `coldfusion`: Deprecated, no replacement at this time.
            ///     - `cosmosdb`: Microsoft Azure Cosmos DB
            ///     - `couchbase`: Couchbase
            ///     - `couchdb`: CouchDB
            ///     - `db2`: IBM Db2
            ///     - `derby`: Apache Derby
            ///     - `dynamodb`: Amazon DynamoDB
            ///     - `edb`: EnterpriseDB
            ///     - `elasticsearch`: Elasticsearch
            ///     - `filemaker`: FileMaker
            ///     - `firebird`: Firebird
            ///     - `firstsql`: Deprecated, use `other_sql` instead.
            ///     - `geode`: Apache Geode
            ///     - `h2`: H2
            ///     - `hanadb`: SAP HANA
            ///     - `hbase`: Apache HBase
            ///     - `hive`: Apache Hive
            ///     - `hsqldb`: HyperSQL DataBase
            ///     - `influxdb`: InfluxDB
            ///     - `informix`: Informix
            ///     - `ingres`: Ingres
            ///     - `instantdb`: InstantDB
            ///     - `interbase`: InterBase
            ///     - `mariadb`: MariaDB (This value has stability level RELEASE CANDIDATE)
            ///     - `maxdb`: SAP MaxDB
            ///     - `memcached`: Memcached
            ///     - `mongodb`: MongoDB
            ///     - `mssql`: Microsoft SQL Server (This value has stability level RELEASE CANDIDATE)
            ///     - `mssqlcompact`: Deprecated, Microsoft SQL Server Compact is discontinued.
            ///     - `mysql`: MySQL (This value has stability level RELEASE CANDIDATE)
            ///     - `neo4j`: Neo4j
            ///     - `netezza`: Netezza
            ///     - `opensearch`: OpenSearch
            ///     - `oracle`: Oracle Database
            ///     - `pervasive`: Pervasive PSQL
            ///     - `pointbase`: PointBase
            ///     - `postgresql`: PostgreSQL (This value has stability level RELEASE CANDIDATE)
            ///     - `progress`: Progress Database
            ///     - `redis`: Redis
            ///     - `redshift`: Amazon Redshift
            ///     - `spanner`: Cloud Spanner
            ///     - `sqlite`: SQLite
            ///     - `sybase`: Sybase
            ///     - `teradata`: Teradata
            ///     - `trino`: Trino
            ///     - `vertica`: Vertica
            ///
            /// The actual DBMS may differ from the one identified by the client. For example, when using PostgreSQL client libraries to connect to a CockroachDB, the `db.system` is set to `postgresql` based on the instrumentation's best knowledge. This attribute has stability level RELEASE CANDIDATE.
            public var system: Self.Key<SystemEnum> { .init(name: SemConv.db.system) }

            public enum SystemEnum: String, SpanAttributeConvertible {
                /// `other_sql`: Some other SQL database. Fallback only. See notes.
                case other_sql
                /// `adabas`: Adabas (Adaptable Database System)
                case adabas
                /// `cache`: Deprecated, use `intersystems_cache` instead.
                @available(*, deprecated, message: "Replaced by `intersystems_cache`.")
                case cache
                /// `intersystems_cache`: InterSystems Caché
                case intersystems_cache
                /// `cassandra`: Apache Cassandra
                case cassandra
                /// `clickhouse`: ClickHouse
                case clickhouse
                /// `cloudscape`: Deprecated, use `other_sql` instead.
                @available(*, deprecated, message: "Replaced by `other_sql`.")
                case cloudscape
                /// `cockroachdb`: CockroachDB
                case cockroachdb
                /// `coldfusion`: Deprecated, no replacement at this time.
                @available(*, deprecated, message: "Removed.")
                case coldfusion
                /// `cosmosdb`: Microsoft Azure Cosmos DB
                case cosmosdb
                /// `couchbase`: Couchbase
                case couchbase
                /// `couchdb`: CouchDB
                case couchdb
                /// `db2`: IBM Db2
                case db2
                /// `derby`: Apache Derby
                case derby
                /// `dynamodb`: Amazon DynamoDB
                case dynamodb
                /// `edb`: EnterpriseDB
                case edb
                /// `elasticsearch`: Elasticsearch
                case elasticsearch
                /// `filemaker`: FileMaker
                case filemaker
                /// `firebird`: Firebird
                case firebird
                /// `firstsql`: Deprecated, use `other_sql` instead.
                @available(*, deprecated, message: "Replaced by `other_sql`.")
                case firstsql
                /// `geode`: Apache Geode
                case geode
                /// `h2`: H2
                case h2
                /// `hanadb`: SAP HANA
                case hanadb
                /// `hbase`: Apache HBase
                case hbase
                /// `hive`: Apache Hive
                case hive
                /// `hsqldb`: HyperSQL DataBase
                case hsqldb
                /// `influxdb`: InfluxDB
                case influxdb
                /// `informix`: Informix
                case informix
                /// `ingres`: Ingres
                case ingres
                /// `instantdb`: InstantDB
                case instantdb
                /// `interbase`: InterBase
                case interbase
                /// `mariadb`: MariaDB (This value has stability level RELEASE CANDIDATE)
                case mariadb
                /// `maxdb`: SAP MaxDB
                case maxdb
                /// `memcached`: Memcached
                case memcached
                /// `mongodb`: MongoDB
                case mongodb
                /// `mssql`: Microsoft SQL Server (This value has stability level RELEASE CANDIDATE)
                case mssql
                /// `mssqlcompact`: Deprecated, Microsoft SQL Server Compact is discontinued.
                @available(*, deprecated, message: "Removed, use `other_sql` instead.")
                case mssqlcompact
                /// `mysql`: MySQL (This value has stability level RELEASE CANDIDATE)
                case mysql
                /// `neo4j`: Neo4j
                case neo4j
                /// `netezza`: Netezza
                case netezza
                /// `opensearch`: OpenSearch
                case opensearch
                /// `oracle`: Oracle Database
                case oracle
                /// `pervasive`: Pervasive PSQL
                case pervasive
                /// `pointbase`: PointBase
                case pointbase
                /// `postgresql`: PostgreSQL (This value has stability level RELEASE CANDIDATE)
                case postgresql
                /// `progress`: Progress Database
                case progress
                /// `redis`: Redis
                case redis
                /// `redshift`: Amazon Redshift
                case redshift
                /// `spanner`: Cloud Spanner
                case spanner
                /// `sqlite`: SQLite
                case sqlite
                /// `sybase`: Sybase
                case sybase
                /// `teradata`: Teradata
                case teradata
                /// `trino`: Trino
                case trino
                /// `vertica`: Vertica
                case vertica
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(rawValue)
                }
            }

            /// `db.user`: Deprecated, no replacement at this time.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `readonly_user`
            ///     - `reporting_user`
            @available(*, deprecated, message: "No replacement at this time.")
            public var user: Self.Key<String> { .init(name: SemConv.db.user) }
        }

        /// `db.cassandra` namespace
        public var cassandra: CassandraAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CassandraAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.cassandra.consistency_level`: The consistency level of the query. Based on consistency values from [CQL](https://docs.datastax.com/en/cassandra-oss/3.0/cassandra/dml/dmlConfigConsistency.html).
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `all`
                ///     - `each_quorum`
                ///     - `quorum`
                ///     - `local_quorum`
                ///     - `one`
                ///     - `two`
                ///     - `three`
                ///     - `local_one`
                ///     - `any`
                ///     - `serial`
                ///     - `local_serial`
                public var consistency_level: Self.Key<Consistency_LevelEnum> { .init(name: SemConv.db.cassandra.consistency_level) }

                public enum Consistency_LevelEnum: String, SpanAttributeConvertible {
                    /// `all`
                    case all
                    /// `each_quorum`
                    case each_quorum
                    /// `quorum`
                    case quorum
                    /// `local_quorum`
                    case local_quorum
                    /// `one`
                    case one
                    /// `two`
                    case two
                    /// `three`
                    case three
                    /// `local_one`
                    case local_one
                    /// `any`
                    case any
                    /// `serial`
                    case serial
                    /// `local_serial`
                    case local_serial
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }

                /// `db.cassandra.idempotence`: Whether or not the query is idempotent.
                ///
                /// - Stability: experimental
                ///
                /// - Type: boolean
                public var idempotence: Self.Key<Bool> { .init(name: SemConv.db.cassandra.idempotence) }

                /// `db.cassandra.page_size`: The fetch size used for paging, i.e. how many rows will be returned at once.
                ///
                /// - Stability: experimental
                ///
                /// - Type: int
                ///
                /// - Example: `5000`
                public var page_size: Self.Key<Int> { .init(name: SemConv.db.cassandra.page_size) }

                /// `db.cassandra.speculative_execution_count`: The number of times a query was speculatively executed. Not set or `0` if the query was not executed speculatively.
                ///
                /// - Stability: experimental
                ///
                /// - Type: int
                ///
                /// - Examples:
                ///     - `0`
                ///     - `2`
                public var speculative_execution_count: Self.Key<Int> { .init(name: SemConv.db.cassandra.speculative_execution_count) }

                /// `db.cassandra.table`: Deprecated, use `db.collection.name` instead.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// - Example: `mytable`
                @available(*, deprecated, message: "Replaced by `db.collection.name`.")
                public var table: Self.Key<String> { .init(name: SemConv.db.cassandra.table) }
            }

            /// `db.cassandra.coordinator` namespace
            public var coordinator: CoordinatorAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct CoordinatorAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes

                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `db.cassandra.coordinator.dc`: The data center of the coordinating node for a query.
                    ///
                    /// - Stability: experimental
                    ///
                    /// - Type: string
                    ///
                    /// - Example: `us-west-2`
                    public var dc: Self.Key<String> { .init(name: SemConv.db.cassandra.coordinator.dc) }

                    /// `db.cassandra.coordinator.id`: The ID of the coordinating node for a query.
                    ///
                    /// - Stability: experimental
                    ///
                    /// - Type: string
                    ///
                    /// - Example: `be13faa2-8574-4d71-926d-27f16cf8a7af`
                    public var id: Self.Key<String> { .init(name: SemConv.db.cassandra.coordinator.id) }
                }
            }
        }

        /// `db.client` namespace
        public var client: ClientAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ClientAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `db.client.connection` namespace
            public var connection: ConnectionAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ConnectionAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes

                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `db.client.connection.state`: The state of a connection in the pool
                    ///
                    /// - Stability: experimental
                    ///
                    /// - Type: enum
                    ///     - `idle`
                    ///     - `used`
                    ///
                    /// - Example: `idle`
                    public var state: Self.Key<StateEnum> { .init(name: SemConv.db.client.connection.state) }

                    public enum StateEnum: String, SpanAttributeConvertible {
                        /// `idle`
                        case idle
                        /// `used`
                        case used
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(rawValue)
                        }
                    }
                }

                /// `db.client.connection.pool` namespace
                public var pool: PoolAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                @dynamicMemberLookup
                public struct PoolAttributes: SpanAttributeNamespace {
                    public var attributes: SpanAttributes

                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }

                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}
                        /// `db.client.connection.pool.name`: The name of the connection pool; unique within the instrumented application. In case the connection pool implementation doesn't provide a name, instrumentation SHOULD use a combination of parameters that would make the name unique, for example, combining attributes `server.address`, `server.port`, and `db.namespace`, formatted as `server.address:server.port/db.namespace`. Instrumentations that generate connection pool name following different patterns SHOULD document it.
                        ///
                        /// - Stability: experimental
                        ///
                        /// - Type: string
                        ///
                        /// - Example: `myDataSource`
                        public var name: Self.Key<String> { .init(name: SemConv.db.client.connection.pool.name) }
                    }
                }
            }

            /// `db.client.connections` namespace
            public var connections: ConnectionsAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ConnectionsAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes

                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `db.client.connections.state`: Deprecated, use `db.client.connection.state` instead.
                    ///
                    /// - Stability: experimental
                    ///
                    /// - Type: enum
                    ///     - `idle`
                    ///     - `used`
                    ///
                    /// - Example: `idle`
                    @available(*, deprecated, message: "Replaced by `db.client.connection.state`.")
                    public var state: Self.Key<StateEnum> { .init(name: SemConv.db.client.connections.state) }

                    public enum StateEnum: String, SpanAttributeConvertible {
                        /// `idle`
                        case idle
                        /// `used`
                        case used
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(rawValue)
                        }
                    }
                }

                /// `db.client.connections.pool` namespace
                public var pool: PoolAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                @dynamicMemberLookup
                public struct PoolAttributes: SpanAttributeNamespace {
                    public var attributes: SpanAttributes

                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }

                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}
                        /// `db.client.connections.pool.name`: Deprecated, use `db.client.connection.pool.name` instead.
                        ///
                        /// - Stability: experimental
                        ///
                        /// - Type: string
                        ///
                        /// - Example: `myDataSource`
                        @available(*, deprecated, message: "Replaced by `db.client.connection.pool.name`.")
                        public var name: Self.Key<String> { .init(name: SemConv.db.client.connections.pool.name) }
                    }
                }
            }
        }

        /// `db.collection` namespace
        public var collection: CollectionAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CollectionAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.collection.name`: The name of a collection (table, container) within the database.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// It is RECOMMENDED to capture the value as provided by the application without attempting to do any case normalization. If the collection name is parsed from the query text, it SHOULD be the first collection name found in the query and it SHOULD match the value provided in the query text including any schema and database name prefix. For batch operations, if the individual operations are known to have the same collection name then that collection name SHOULD be used, otherwise `db.collection.name` SHOULD NOT be captured. This attribute has stability level RELEASE CANDIDATE.
                ///
                /// - Examples:
                ///     - `public.users`
                ///     - `customers`
                public var name: Self.Key<String> { .init(name: SemConv.db.collection.name) }
            }
        }

        /// `db.cosmosdb` namespace
        public var cosmosdb: CosmosdbAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CosmosdbAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.cosmosdb.client_id`: Unique Cosmos client instance id.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// - Example: `3ba4827d-4422-483f-b59f-85b74211c11d`
                public var client_id: Self.Key<String> { .init(name: SemConv.db.cosmosdb.client_id) }

                /// `db.cosmosdb.connection_mode`: Cosmos client connection mode.
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `gateway`: Gateway (HTTP) connections mode
                ///     - `direct`: Direct connection.
                public var connection_mode: Self.Key<Connection_ModeEnum> { .init(name: SemConv.db.cosmosdb.connection_mode) }

                public enum Connection_ModeEnum: String, SpanAttributeConvertible {
                    /// `gateway`: Gateway (HTTP) connections mode
                    case gateway
                    /// `direct`: Direct connection.
                    case direct
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }

                /// `db.cosmosdb.container`: Deprecated, use `db.collection.name` instead.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// - Example: `mytable`
                @available(*, deprecated, message: "Replaced by `db.collection.name`.")
                public var container: Self.Key<String> { .init(name: SemConv.db.cosmosdb.container) }

                /// `db.cosmosdb.operation_type`: Cosmos DB Operation Type.
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `batch`
                ///     - `create`
                ///     - `delete`
                ///     - `execute`
                ///     - `execute_javascript`
                ///     - `invalid`
                ///     - `head`
                ///     - `head_feed`
                ///     - `patch`
                ///     - `query`
                ///     - `query_plan`
                ///     - `read`
                ///     - `read_feed`
                ///     - `replace`
                ///     - `upsert`
                public var operation_type: Self.Key<Operation_TypeEnum> { .init(name: SemConv.db.cosmosdb.operation_type) }

                public enum Operation_TypeEnum: String, SpanAttributeConvertible {
                    /// `batch`
                    case batch
                    /// `create`
                    case create
                    /// `delete`
                    case delete
                    /// `execute`
                    case execute
                    /// `execute_javascript`
                    case execute_javascript
                    /// `invalid`
                    case invalid
                    /// `head`
                    case head
                    /// `head_feed`
                    case head_feed
                    /// `patch`
                    case patch
                    /// `query`
                    case query
                    /// `query_plan`
                    case query_plan
                    /// `read`
                    case read
                    /// `read_feed`
                    case read_feed
                    /// `replace`
                    case replace
                    /// `upsert`
                    case upsert
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }

                /// `db.cosmosdb.request_charge`: RU consumed for that operation
                ///
                /// - Stability: experimental
                ///
                /// - Type: double
                ///
                /// - Examples:
                ///     - `46.18`
                ///     - `1.0`
                public var request_charge: Self.Key<Double> { .init(name: SemConv.db.cosmosdb.request_charge) }

                /// `db.cosmosdb.request_content_length`: Request payload size in bytes
                ///
                /// - Stability: experimental
                ///
                /// - Type: int
                public var request_content_length: Self.Key<Int> { .init(name: SemConv.db.cosmosdb.request_content_length) }

                /// `db.cosmosdb.status_code`: Deprecated, use `db.response.status_code` instead.
                ///
                /// - Stability: experimental
                ///
                /// - Type: int
                ///
                /// - Examples:
                ///     - `200`
                ///     - `201`
                @available(*, deprecated, message: "Replaced by `db.response.status_code`.")
                public var status_code: Self.Key<Int> { .init(name: SemConv.db.cosmosdb.status_code) }

                /// `db.cosmosdb.sub_status_code`: Cosmos DB sub status code.
                ///
                /// - Stability: experimental
                ///
                /// - Type: int
                ///
                /// - Examples:
                ///     - `1000`
                ///     - `1002`
                public var sub_status_code: Self.Key<Int> { .init(name: SemConv.db.cosmosdb.sub_status_code) }
            }
        }

        /// `db.elasticsearch` namespace
        public var elasticsearch: ElasticsearchAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ElasticsearchAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            /// `db.elasticsearch.path_parts`: A dynamic value in the url path.
            ///
            /// - Stability: experimental
            ///
            /// - Type: templateString
            ///
            /// Many Elasticsearch url paths allow dynamic values. These SHOULD be recorded in span attributes in the format `db.elasticsearch.path_parts.<key>`, where `<key>` is the url path part name. The implementation SHOULD reference the [elasticsearch schema](https://raw.githubusercontent.com/elastic/elasticsearch-specification/main/output/schema/schema.json) in order to map the path part values to their names.
            ///
            /// - Examples:
            ///     - `db.elasticsearch.path_parts.index=test-index`
            ///     - `db.elasticsearch.path_parts.doc_id=123`
            public var path_parts: PathPartsAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct PathPartsAttributes {
                public var attributes: SpanAttributes

                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeId = self.attributeId(forKey: key)
                    attributes[attributeId] = value
                }

                private func attributeId(forKey key: String) -> String {
                    var attributeId = "db.elasticsearch.path_parts."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeId.append("_")
                        } else {
                            attributeId.append(character.lowercased())
                        }
                    }

                    return attributeId
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `db.elasticsearch.cluster` namespace
            public var cluster: ClusterAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ClusterAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes

                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `db.elasticsearch.cluster.name`: Deprecated, use `db.namespace` instead.
                    ///
                    /// - Stability: experimental
                    ///
                    /// - Type: string
                    ///
                    /// - Example: `e9106fc68e3044f0b1475b04bf4ffd5f`
                    @available(*, deprecated, message: "Replaced by `db.namespace`.")
                    public var name: Self.Key<String> { .init(name: SemConv.db.elasticsearch.cluster.name) }
                }
            }

            /// `db.elasticsearch.node` namespace
            public var node: NodeAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct NodeAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes

                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `db.elasticsearch.node.name`: Represents the human-readable identifier of the node/instance to which a request was routed.
                    ///
                    /// - Stability: experimental
                    ///
                    /// - Type: string
                    ///
                    /// - Example: `instance-0000000001`
                    public var name: Self.Key<String> { .init(name: SemConv.db.elasticsearch.node.name) }
                }
            }
        }

        /// `db.instance` namespace
        public var instance: InstanceAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct InstanceAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.instance.id`: Deprecated, no general replacement at this time. For Elasticsearch, use `db.elasticsearch.node.name` instead.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// - Example: `mysql-e26b99z.example.com`
                @available(*, deprecated, message: "Deprecated, no general replacement at this time. For Elasticsearch, use `db.elasticsearch.node.name` instead.")
                public var id: Self.Key<String> { .init(name: SemConv.db.instance.id) }
            }
        }

        /// `db.jdbc` namespace
        public var jdbc: JdbcAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct JdbcAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.jdbc.driver_classname`: Removed, no replacement at this time.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// - Examples:
                ///     - `org.postgresql.Driver`
                ///     - `com.microsoft.sqlserver.jdbc.SQLServerDriver`
                @available(*, deprecated, message: "Removed as not used.")
                public var driver_classname: Self.Key<String> { .init(name: SemConv.db.jdbc.driver_classname) }
            }
        }

        /// `db.mongodb` namespace
        public var mongodb: MongodbAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct MongodbAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.mongodb.collection`: Deprecated, use `db.collection.name` instead.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// - Example: `mytable`
                @available(*, deprecated, message: "Replaced by `db.collection.name`.")
                public var collection: Self.Key<String> { .init(name: SemConv.db.mongodb.collection) }
            }
        }

        /// `db.mssql` namespace
        public var mssql: MssqlAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct MssqlAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.mssql.instance_name`: Deprecated, SQL Server instance is now populated as a part of `db.namespace` attribute.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// - Example: `MSSQLSERVER`
                @available(*, deprecated, message: "Deprecated, no replacement at this time.")
                public var instance_name: Self.Key<String> { .init(name: SemConv.db.mssql.instance_name) }
            }
        }

        /// `db.operation` namespace
        public var operation: OperationAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct OperationAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.operation.name`: The name of the operation or command being executed.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// It is RECOMMENDED to capture the value as provided by the application without attempting to do any case normalization. If the operation name is parsed from the query text, it SHOULD be the first operation name found in the query. For batch operations, if the individual operations are known to have the same operation name then that operation name SHOULD be used prepended by `BATCH `, otherwise `db.operation.name` SHOULD be `BATCH` or some other database system specific term if more applicable. This attribute has stability level RELEASE CANDIDATE.
                ///
                /// - Examples:
                ///     - `findAndModify`
                ///     - `HMSET`
                ///     - `SELECT`
                public var name: Self.Key<String> { .init(name: SemConv.db.operation.name) }
            }

            /// `db.operation.batch` namespace
            public var batch: BatchAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct BatchAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes

                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `db.operation.batch.size`: The number of queries included in a batch operation.
                    ///
                    /// - Stability: experimental
                    ///
                    /// - Type: int
                    ///
                    /// Operations are only considered batches when they contain two or more operations, and so `db.operation.batch.size` SHOULD never be `1`. This attribute has stability level RELEASE CANDIDATE.
                    ///
                    /// - Examples:
                    ///     - `2`
                    ///     - `3`
                    ///     - `4`
                    public var size: Self.Key<Int> { .init(name: SemConv.db.operation.batch.size) }
                }
            }
        }

        /// `db.query` namespace
        public var query: QueryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct QueryAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            /// `db.query.parameter`: A query parameter used in `db.query.text`, with `<key>` being the parameter name, and the attribute value being a string representation of the parameter value.
            ///
            /// - Stability: experimental
            ///
            /// - Type: templateString
            ///
            /// Query parameters should only be captured when `db.query.text` is parameterized with placeholders. If a parameter has no name and instead is referenced only by index, then `<key>` SHOULD be the 0-based index. This attribute has stability level RELEASE CANDIDATE.
            ///
            /// - Examples:
            ///     - `someval`
            ///     - `55`
            public var parameter: ParameterAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct ParameterAttributes {
                public var attributes: SpanAttributes

                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeId = self.attributeId(forKey: key)
                    attributes[attributeId] = value
                }

                private func attributeId(forKey key: String) -> String {
                    var attributeId = "db.query.parameter."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeId.append("_")
                        } else {
                            attributeId.append(character.lowercased())
                        }
                    }

                    return attributeId
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.query.text`: The database query being executed.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// For sanitization see [Sanitization of `db.query.text`](../../docs/database/database-spans.md#sanitization-of-dbquerytext). For batch operations, if the individual operations are known to have the same query text then that query text SHOULD be used, otherwise all of the individual query texts SHOULD be concatenated with separator `; ` or some other database system specific separator if more applicable. Even though parameterized query text can potentially have sensitive data, by using a parameterized query the user is giving a strong signal that any sensitive data will be passed as parameter values, and the benefit to observability of capturing the static part of the query text by default outweighs the risk. This attribute has stability level RELEASE CANDIDATE.
                ///
                /// - Examples:
                ///     - `SELECT * FROM wuser_table where username = ?`
                ///     - `SET mykey "WuValue"`
                public var text: Self.Key<String> { .init(name: SemConv.db.query.text) }
            }
        }

        /// `db.redis` namespace
        public var redis: RedisAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct RedisAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.redis.database_index`: Deprecated, use `db.namespace` instead.
                ///
                /// - Stability: experimental
                ///
                /// - Type: int
                ///
                /// - Examples:
                ///     - `0`
                ///     - `1`
                ///     - `15`
                @available(*, deprecated, message: "Replaced by `db.namespace`.")
                public var database_index: Self.Key<Int> { .init(name: SemConv.db.redis.database_index) }
            }
        }

        /// `db.response` namespace
        public var response: ResponseAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ResponseAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.response.status_code`: Database response status code.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// The status code returned by the database. Usually it represents an error code, but may also represent partial success, warning, or differentiate between various types of successful outcomes. Semantic conventions for individual database systems SHOULD document what `db.response.status_code` means in the context of that system. This attribute has stability level RELEASE CANDIDATE.
                ///
                /// - Examples:
                ///     - `102`
                ///     - `ORA-17002`
                ///     - `08P01`
                ///     - `404`
                public var status_code: Self.Key<String> { .init(name: SemConv.db.response.status_code) }
            }
        }

        /// `db.sql` namespace
        public var sql: SqlAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SqlAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.sql.table`: Deprecated, use `db.collection.name` instead.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// - Example: `mytable`
                @available(*, deprecated, message: "Replaced by `db.collection.name`.")
                public var table: Self.Key<String> { .init(name: SemConv.db.sql.table) }
            }
        }
    }
}
