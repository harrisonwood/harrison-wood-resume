install.packages("workflowr")
library(workflowr)

wflow_start(directory = ".", existing = TRUE)

#For MCRI and Gitlab you need an extra step

#To use Gitlab with MCRI
wflow_use_gitlab(
  username = "harrison.wood",
  repository = "resume",
  navbar_link = TRUE,
  protocol = "https",
  domain = "git.mcri.edu.au",
  project = "."
)


#To create and preview
wflow_build()

#Once happy, we then publish the analysis
wflow_publish(files="analysis/*", message = "Publish site for interview")
