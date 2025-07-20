# 🚀 Azure Bicep Deployment via GitHub Actions

## 🔧 Setup Instructions

### 1. Login to Azure

Use the following command to authenticate with Azure:

```bash
az login --use-device-code
```

### 2. Create Azure Credentials

## Generate a Service Principal that GitHub Actions can use to deploy your Bicep templates:

```bash
az ad sp create-for-rbac \
  --name "github-bicep-deployer" \
  --role contributor \
  --scopes /subscriptions/581fe6f8-cbf9-464e-b2cc-3c933a09b27c \
  --sdk-auth
```

## Note: This will return a JSON object. Keep it safe — you'll use it in the next step.

### 3. Add Azure Credentials to GitHub Secrets

Go to your GitHub repository
Navigate to:

Settings → Secrets and variables → Actions → New repository secret

Create a new secret:

Name: AZURE_CREDENTIALS

Value: Paste the full JSON output from the previous command

---

In side branches there are corresponding lessons from
https://www.udemy.com/course/master-azure-bicep
