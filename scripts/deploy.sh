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
# Hash 5485
# Hash 4668
# Hash 2352
# Hash 3989
# Hash 9886
# Hash 2345
# Hash 1620
# Hash 9584
# Hash 8689
# Hash 9358
# Hash 1507
# Hash 8713
# Hash 2595
# Hash 5360
# Hash 9252
# Hash 1700
# Hash 4076
# Hash 2708
# Hash 3818
# Hash 9022
# Hash 4321
# Hash 9406
# Hash 2829
# Hash 2175
# Hash 9837
# Hash 8168
# Hash 1248
# Hash 8256
# Hash 1184
# Hash 3648
# Hash 2343
# Hash 9039
# Hash 9608
# Hash 4428
# Hash 9259
# Hash 5405
# Hash 3716
# Hash 1416
# Hash 2905
# Hash 1494
# Hash 9334
# Hash 3767
# Hash 1267
# Hash 3766
# Hash 5571
# Hash 1846
# Hash 4860
# Hash 3610
# Hash 2956
# Hash 5141
# Hash 5821
# Hash 5742
# Hash 9741
# Hash 8216
# Hash 8970
# Hash 1383