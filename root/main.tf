module "vcsworkflowtest" {
  source  = "app.terraform.io/tfc-test-pool/wrkflw/vcs"
  version = "1.0.2"
  repository_name     = "gkecluster"
  roles = {
    repository = ["roles/artifactregistry.writer"]
    workspace  = ["roles/iam.workloadIdentityPoolAdmin", "roles/compute.admin"]
  }
  gcp_projects = {
    pr = "prgkke",
    np = "npgkke"
  }
  repository_template = "tf-appcode-template"
  vcs_ghain           = "ghain-9NW7c1EhRWxYsYs5"
  tfe_project_id      = "prj-hw7utneA8zjAmVFJ"
  wif = {
    repository = {
      gcp = {
        pr = {
          service_account = "sareposdgkke@sdgkke.iam.gserviceaccount.com"
          sa_project_id   = "sdgkke"
          project_number  = "1065004408737"
          pool_id         = "prghepoolgkke"
          provider_id     = "gh-provider"
        },
        np = {
          service_account = "sareposdgkke@sdgkke.iam.gserviceaccount.com"
          sa_project_id   = "sdgkke"
          project_number  = "1065004408737"
          pool_id         = "npghepoolgkke"
          provider_id     = "gh-provider"
        }
      }
    },
    workspace = {
      gcp = {
        pr = {
          project_number = "1065004408737"
          pool_id        = "prtfepoolgkke"
          provider_id    = "tf-provider"
        },
        np = {
          project_number = "1065004408737"
          pool_id        = "nptfepoolgkke"
          provider_id    = "tf-provider"
        }
      }
    }
  }
  workload_context = {
    pr = {
      pr = {
        gcp = ["northamerica-northeast2", "northamerica-northeast1", "us-central4"]
      }
    },
    np = {
      stg = {
        gcp = ["northamerica-northeast2"]
      }
    }
  }
  workload_id = "clst"
  workflow_id = "tf"
  # ghe_team_id = "operator-bqqq"
  # tfe_team_id = ""
}