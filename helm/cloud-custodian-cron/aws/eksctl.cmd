
eksctl utils associate-iam-oidc-provider --cluster karpenter --approve
eksctl create iamserviceaccount --name c7n-service-account --namespace c7n --cluster karpenter --role-name "c7n-iam-role" --attach-policy-arn arn:aws:iam::154563028627:policy/c7n-iam-policy --approve
eksctl update iamserviceaccount --name c7n-service-account --namespace c7n --cluster karpenter  --attach-policy-arn arn:aws:iam::154563028627:policy/c7n-iam-policy --approve