workflow "Analyze push" {
  on = "push"
  resolves = ["SonarCloud Trigger"]
}

workflow "Analyze new pull request" {
  on = "pull_request"
  resolves = ["SonarCloud Trigger"]
}

action "SonarCloud Trigger" {
  uses = "sonarsource/sonarcloud-github-action@master"
  secrets = ["GITHUB_TOKEN", "SONAR_TOKEN"]
  env = {
    SONARCLOUD_URL = "https://fab.eu.ngrok.io"
  }
}
