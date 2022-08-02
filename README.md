# tfc-ws-layout-example
Example layout of Terraform code and Terraform Cloud/Enterprise Workspaces.


## Layout

```
.
├── dev
│   ├── app-db
│   │   ├── main.tf
│   │   └── outputs.tf
│   ├── app-middleware
│   │   ├── main.tf
│   │   └── outputs.tf
│   ├── app-web
│   │   ├── main.tf
│   │   └── outputs.tf
│   └── core
│       ├── main.tf
│       └── outputs.tf
├── prod
│   ├── app-db
│   │   ├── main.tf
│   │   └── outputs.tf
│   ├── app-middleware
│   │   ├── main.tf
│   │   └── outputs.tf
│   ├── app-web
│   │   ├── main.tf
│   │   └── outputs.tf
│   └── core
│       ├── main.tf
│       └── outputs.tf
└── stage
    ├── app-db
    │   ├── main.tf
    │   └── outputs.tf
    ├── app-middleware
    │   ├── main.tf
    │   └── outputs.tf
    ├── app-web
    │   ├── main.tf
    │   └── outputs.tf
    └── core
        ├── main.tf
        └── outputs.tf