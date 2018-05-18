pageWithSidebar(
  
  headerPanel('Iris k-means clustering'),
  
  sidebarPanel(
    selectInput(inputId = "algo",
                label = "Choose an algo:",
                choices = c("Hartigan-Wong", "Lloyd", "Forgy","MacQueen")),
    selectInput('xcol', 'X Variable', names(iris)),
    selectInput('ycol', 'Y Variable', names(iris),selected=names(iris)[[2]]),
    numericInput('clusters', 'Cluster count', 3, min = 1, max = 9),
    numericInput('itermax', 'Num_itermax', 3, min = 1, max = 100)),
  
  mainPanel(
    plotOutput('plot1')
  )
)