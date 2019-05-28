workflow "New workflow" {
  on = "push"
  resolves = ["Run SonarCloud Scan"]
}

action "Run SonarCloud Scan" {
  uses = "SonarSource/sonarcloud-github-action@initial"
  secrets = ["SONARCLOUD_TOKEN"]
}
