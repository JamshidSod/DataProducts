library(shiny)

shinyUI(
        navbarPage("Shiny App",
                   tabPanel("Analysis",
                            fluidPage(
                                    titlePanel("PPP projects status around the world"),
                                    sidebarLayout(
                                            sidebarPanel(
                                                    selectInput("variable", "Variable:",
                                                                c("East Asia and Pacific" = "East Asia and Pacific",
                                                                  "Europe and Central Asia" = "Europe and Central Asia",
                                                                  "Latin America and the Caribbean" = "Latin America and the Caribbean",
                                                                  "Middle East and North Africa" = "Middle East and North Africa",
                                                                  "South Asia" = "South Asia",
                                                                  "Sub-Saharan Africa" = "Sub-Saharan Africa",
                                                                  "World" = "World"
                                                                ))),
                                            
                                            mainPanel(
                                                    h3(textOutput("caption")),
                                                    
                                                    tabsetPanel(type = "tabs", 
                                                                tabPanel("Frequency Plot", plotOutput("mpgBoxPlot")),
                                                                tabPanel("Regression model", 
                                                                         plotOutput("mpgPlot"),
                                                                         verbatimTextOutput("fit")
                                                                )
                                                    )
                                            )
                                    )
                            )
                   ),
                   tabPanel("Check the Source Code",
                            h2("All the Source code can be found in github repo"),
                            hr(),
                            h3("Here : Database short information"),
                            helpText("The Private Participation in Infrastructure (PPI) Project Database has data on over 14,000 infrastructure projects in 139 low- and middle-income countries. The database is the leading source of PPI trends in the developing world, covering projects in the energy, telecommunications, transport, and water and sewerage sectors. 
                                     "),
                            h3("Important"),
                            p("A data frame with 14848 observations on 6 variables."),
                            
                            a("https://github.com/JamshidSod")
                            ),
                   tabPanel("More Data Detail",
                            h2("The Private Participation in Infrastructure (PPI) Project Database"),
                            hr(),
                            h3("Description"),
                            helpText("The Private Participation in Infrastructure (PPI) Project Database has data on over 14,000 infrastructure projects in 139 low- and middle-income countries. The database is the leading source of PPI trends in the developing world, covering projects in the energy, telecommunications, transport, and water and sewerage sectors"),
                            h3("Format"),
                            p("A data frame with 14848 observations on 6 variables."),
                            
                            p("data.frame: 14848 obs. of  6 variables:"),
                            p("Region         : Factor w/ 8 levels in current US$ millions,..: 2 2 2 2 2 2 2 2 2 2 ..."),
                            p("$ Country        : Factor w/ 139 levels, Afghanistan,..: 5 5 5 5 5 5 5 5 5 5 ..."),
                            p("$ Project.Status : Factor w/ 7 levels ,Canceled,..: 7 7 7 7 7 7 7 7 7 7 ..."),
                            p("$ Primary.Sector : Factor w/ 5 levels ,Energy,Telecom,..: 3 3 3 3 3 3 3 3 3 3 ..."),
                            p("$ Contract.Period: Factor w/ 60 levels ,1,10,11,..: NA NA NA NA NA NA NA NA NA NA ..."),
                            p("$ Percent.Private: num  100 100 100 100 100 100 100 100 100 100 ..."),
                            
                            h3("Source"),
                            
                            p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391???411.")
                   ),
                   tabPanel("Go back to my Github repository",
                            a("https://github.com/ludovicbenistant?tab=repositories"),
                            hr(),
                            h2("I hope you like the Shiny App"),
                            h2("The name of the repositorie is DataProducts")
                   )
        )
)

