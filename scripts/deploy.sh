#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 2204
# Hash 1645
# Hash 6760
# Hash 2987
# Hash 3273
# Hash 5134
# Hash 1018
# Hash 2743
# Hash 5496
# Hash 4578
# Hash 8544
# Hash 5117
# Hash 6398
# Hash 3819
# Hash 8714
# Hash 6614
# Hash 9863
# Hash 9523
# Hash 9893
# Hash 6658
# Hash 4741
# Hash 3539
# Hash 3107
# Hash 3465
# Hash 7615
# Hash 9708
# Hash 6080
# Hash 4983
# Hash 3798
# Hash 8471
# Hash 3094
# Hash 4131
# Hash 3975
# Hash 7300
# Hash 8956
# Hash 1943
# Hash 6164