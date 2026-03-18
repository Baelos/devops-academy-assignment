# Section 3 – Thought Process: Terraform Shows Large Infrastructure Diff Unexpectedly

## Scenario
Terraform plan shows a large number of infrastructure changes that nobody expected.

Before approving or applying anything, I would stop and investigate carefully. A large unexpected diff can mean configuration drift, state issues, wrong variables, provider changes, or targeting the wrong environment.

## Investigation Process

### 1. Do not apply immediately
The first step is to avoid applying changes without understanding them. Unexpected infrastructure changes can cause outages, resource replacement, or data loss.

### 2. Check whether the correct environment is being used
I would confirm:
- correct AWS account
- correct region
- correct Terraform workspace
- correct backend configuration
- correct variable file or environment variables

A wrong environment is one of the most common reasons for surprising plans.

### 3. Review recent code changes
I would inspect:
- recent commits
- pull requests
- variable changes
- module updates
- provider version changes

Even a small change in a module or variable can create a large diff.

### 4. Check Terraform state consistency
I would verify whether the Terraform state matches reality:
- is the correct remote state being used
- was the state file changed or replaced
- was anything manually changed in the cloud console
- were resources deleted, renamed, or imported incorrectly

A mismatch between state and real infrastructure can produce an unexpected plan.

### 5. Look for drift
I would consider configuration drift:
- manual changes in AWS console
- manual tag edits
- resource policy changes
- deleted or recreated resources outside Terraform

Terraform may now be trying to recreate or modify resources to match the code.

### 6. Check provider and module versions
A provider upgrade or module change can alter resource behavior and create plan differences.

I would review:
- `.terraform.lock.hcl`
- provider version constraints
- module source versions
- recent `terraform init -upgrade` actions

### 7. Read the plan carefully
I would separate the changes into categories:
- safe in-place updates
- risky replacements
- destructive deletes
- unexpected creations

The most important thing is to identify whether any critical resource is going to be replaced or destroyed.

### 8. Use additional inspection if needed
If the situation is unclear, I would use:
- `terraform state list`
- `terraform state show`
- `terraform plan -out=tfplan`
- `terraform show tfplan`

This helps confirm exactly what Terraform believes exists and what it wants to change.

### 9. Ask for peer review
If the diff is large and unexpected, I would not approve it alone. I would ask for review from a teammate or mentor before any apply.

### 10. Apply only after the cause is understood
I would only approve the change once I understand:
- why the diff appeared
- whether it is expected or accidental
- whether it affects critical resources
- whether a rollback plan exists

## Risks of Applying Without Investigation
Applying a large unexpected diff without investigation can lead to:
- downtime
- destroyed resources
- networking issues
- security misconfiguration
- state corruption
- accidental deployment into the wrong environment

## Final Answer
If Terraform shows a large unexpected infrastructure diff, I would stop and investigate before applying anything. I would verify the environment, backend, workspace, variables, recent code changes, provider versions, and state consistency. I would also check for drift and ask for peer review. I would only approve the apply after the root cause of the diff is clearly understood.
