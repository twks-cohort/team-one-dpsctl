package cmd

type ClusterConfig struct {
	clusterName string
	clusterEndpoint string
	base64CertificateAuthorityData string
}

var cluster1 = ClusterConfig{
			clusterName: "sandbox-us-east-2",
			clusterEndpoint: "{{ op://cohorts/platform-sandbox-us-east-2/cluster-endpoint }}",
			base64CertificateAuthorityData: "{{ op://cohorts/platform-sandbox-us-east-2/base64-certificate-authority-data }}",
		}

var cluster2 = ClusterConfig{
			clusterName: "prod-us-east-1",
			clusterEndpoint: "{{ op://cohorts/platform-prod-us-east-1/cluster-endpoint }}",
			base64CertificateAuthorityData: "{{ op://cohorts/platform-prod-us-east-1/base64-certificate-authority-data }}",
		}

var cluster3 = ClusterConfig{
			clusterName: "cohort-base-nonprod-us-east-2",
			clusterEndpoint: "{{ op://cohorts/cohort-base-platform-nonprod-us-east-2/cluster-endpoint }}",
			base64CertificateAuthorityData: "{{ op://cohorts/cohort-base-platform-nonprod-us-east-2/base64-certificate-authority-data }}",
		}

var clusters = []ClusterConfig{ cluster1, cluster2, cluster3 }

const (
	LoginClientId		 						    = "{{ op://cohorts/svc-auth0/twdpsio-dpsctl-client-id}}"
	LoginScope                      = "openid offline_access profile email"
	LoginAudience                   = ""

	IdpIssuerUrl								    = "https://dev-2ibzxsfuw1nxh0uw.us.auth0.com/"

	ConfigEnvDefault                = "DPSCTL"
	ConfigFileDefaultName           = "config"
	ConfigFileDefaultType           = "yaml"
	ConfigFileDefaultLocation       = "/.dpsctl" // path will begin with $HOME dir
	ConfigFileDefaultLocationMsg    = "config file (default is $HOME/.dpsctl/config.yaml)"

	DefaultCluster                  = "nonprod-us-east-2"
	TeamsApi                        = "http://localhost:8000"
)
