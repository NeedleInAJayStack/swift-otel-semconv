// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

public extension SemConv {
    /// `cloud` namespace
    enum cloud {
        /// `cloud.availability_zone`: Cloud regions often have multiple, isolated locations known as zones to increase availability. Availability zone represents the zone where the resource is running.
        ///
        /// - Stability: experimental
        ///
        /// - Type: string
        ///
        /// Availability zones are called "zones" on Alibaba Cloud and Google Cloud.
        ///
        /// - Example: `us-east-1c`
        public static let availability_zone = "cloud.availability_zone"

        /// `cloud.platform`: The cloud platform in use.
        ///
        /// - Stability: experimental
        ///
        /// - Type: enum
        ///     - `alibaba_cloud_ecs`: Alibaba Cloud Elastic Compute Service
        ///     - `alibaba_cloud_fc`: Alibaba Cloud Function Compute
        ///     - `alibaba_cloud_openshift`: Red Hat OpenShift on Alibaba Cloud
        ///     - `aws_ec2`: AWS Elastic Compute Cloud
        ///     - `aws_ecs`: AWS Elastic Container Service
        ///     - `aws_eks`: AWS Elastic Kubernetes Service
        ///     - `aws_lambda`: AWS Lambda
        ///     - `aws_elastic_beanstalk`: AWS Elastic Beanstalk
        ///     - `aws_app_runner`: AWS App Runner
        ///     - `aws_openshift`: Red Hat OpenShift on AWS (ROSA)
        ///     - `azure_vm`: Azure Virtual Machines
        ///     - `azure_container_apps`: Azure Container Apps
        ///     - `azure_container_instances`: Azure Container Instances
        ///     - `azure_aks`: Azure Kubernetes Service
        ///     - `azure_functions`: Azure Functions
        ///     - `azure_app_service`: Azure App Service
        ///     - `azure_openshift`: Azure Red Hat OpenShift
        ///     - `gcp_bare_metal_solution`: Google Bare Metal Solution (BMS)
        ///     - `gcp_compute_engine`: Google Cloud Compute Engine (GCE)
        ///     - `gcp_cloud_run`: Google Cloud Run
        ///     - `gcp_kubernetes_engine`: Google Cloud Kubernetes Engine (GKE)
        ///     - `gcp_cloud_functions`: Google Cloud Functions (GCF)
        ///     - `gcp_app_engine`: Google Cloud App Engine (GAE)
        ///     - `gcp_openshift`: Red Hat OpenShift on Google Cloud
        ///     - `ibm_cloud_openshift`: Red Hat OpenShift on IBM Cloud
        ///     - `tencent_cloud_cvm`: Tencent Cloud Cloud Virtual Machine (CVM)
        ///     - `tencent_cloud_eks`: Tencent Cloud Elastic Kubernetes Service (EKS)
        ///     - `tencent_cloud_scf`: Tencent Cloud Serverless Cloud Function (SCF)
        ///
        /// The prefix of the service SHOULD match the one specified in `cloud.provider`.
        public static let platform = "cloud.platform"

        /// `cloud.provider`: Name of the cloud provider.
        ///
        /// - Stability: experimental
        ///
        /// - Type: enum
        ///     - `alibaba_cloud`: Alibaba Cloud
        ///     - `aws`: Amazon Web Services
        ///     - `azure`: Microsoft Azure
        ///     - `gcp`: Google Cloud Platform
        ///     - `heroku`: Heroku Platform as a Service
        ///     - `ibm_cloud`: IBM Cloud
        ///     - `tencent_cloud`: Tencent Cloud
        public static let provider = "cloud.provider"

        /// `cloud.region`: The geographical region the resource is running.
        ///
        /// - Stability: experimental
        ///
        /// - Type: string
        ///
        /// Refer to your provider's docs to see the available regions, for example [Alibaba Cloud regions](https://www.alibabacloud.com/help/doc-detail/40654.htm), [AWS regions](https://aws.amazon.com/about-aws/global-infrastructure/regions_az/), [Azure regions](https://azure.microsoft.com/global-infrastructure/geographies/), [Google Cloud regions](https://cloud.google.com/about/locations), or [Tencent Cloud regions](https://www.tencentcloud.com/document/product/213/6091).
        ///
        /// - Examples:
        ///     - `us-central1`
        ///     - `us-east-1`
        public static let region = "cloud.region"

        /// `cloud.resource_id`: Cloud provider-specific native identifier of the monitored cloud resource (e.g. an [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) on AWS, a [fully qualified resource ID](https://learn.microsoft.com/rest/api/resources/resources/get-by-id) on Azure, a [full resource name](https://cloud.google.com/apis/design/resource_names#full_resource_name) on GCP)
        ///
        /// - Stability: experimental
        ///
        /// - Type: string
        ///
        /// On some cloud providers, it may not be possible to determine the full ID at startup, so it may be necessary to set `cloud.resource_id` as a span attribute instead.  The exact value to use for `cloud.resource_id` depends on the cloud provider. The following well-known definitions MUST be used if you set this attribute and they apply:  - **AWS Lambda:** The function [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).   Take care not to use the "invoked ARN" directly but replace any   [alias suffix](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)   with the resolved function version, as the same runtime instance may be invocable with   multiple different aliases. - **GCP:** The [URI of the resource](https://cloud.google.com/iam/docs/full-resource-names) - **Azure:** The [Fully Qualified Resource ID](https://docs.microsoft.com/rest/api/resources/resources/get-by-id) of the invoked function,   *not* the function app, having the form   `/subscriptions/<SUBSCRIPTION_GUID>/resourceGroups/<RG>/providers/Microsoft.Web/sites/<FUNCAPP>/functions/<FUNC>`.   This means that a span attribute MUST be used, as an Azure function app can host multiple functions that would usually share   a TracerProvider.
        ///
        /// - Examples:
        ///     - `arn:aws:lambda:REGION:ACCOUNT_ID:function:my-function`
        ///     - `//run.googleapis.com/projects/PROJECT_ID/locations/LOCATION_ID/services/SERVICE_ID`
        ///     - `/subscriptions/<SUBSCRIPTION_GUID>/resourceGroups/<RG>/providers/Microsoft.Web/sites/<FUNCAPP>/functions/<FUNC>`
        public static let resource_id = "cloud.resource_id"

        /// `cloud.account` namespace
        public enum account {
            /// `cloud.account.id`: The cloud account ID the resource is assigned to.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `111111111111`
            ///     - `opentelemetry`
            public static let id = "cloud.account.id"
        }
    }
}
