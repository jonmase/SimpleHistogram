
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
# Original code: https://github.com/rstudio/shiny-examples/blob/master/001-hello/app.R
# License: MIT
#

library(shiny)

shinyUI(navbarPage(
  "Simple Histogram",
  tabPanel(
    "Visualisation",
    fluidPage(
      title = "Simple Histogram",
      # Application title
      # titlePanel("Old Faithful Geyser Data"),

      # Sidebar with a slider input for number of bins
      sidebarLayout(
        sidebarPanel(
          sliderInput(
            "bins",
            "Number of bins:",
            min = 1,
            max = 50,
            value = 30
          )
        ),

        # Show a plot of the generated distribution
        mainPanel(
          plotOutput("distPlot")
        )
      )
    )
  ),
  tabPanel(
    "About",
    fluidPage(
      p(
        tagList(
          "This app was created using the ",
          a(
            "Shiny Demo app",
            href = "https://shiny.rstudio.com/tutorial/written-tutorial/lesson1/",
            target = "_blank"
          ),
          " for the ",
          a(
            "MSc in Evidence-Based Health Care",
            href = "https://www.conted.ox.ac.uk/about/msc-in-evidence-based-health-care",
            target = "_blank"
          ),
          " at the ",
          a(
            "University of Oxford",
            href = "https://www.ox.ac.uk",
            target = "_blank"
          )
        )
      ),
      p(
        "This Shiny app is hosted on the University of Oxford's ",
        a(
          "Interactive Data Network",
          href = "http://idn.it.ox.ac.uk",
          target = "_blank"
        ),
        " shinyapps.io subscription."
      ),
      p(strong("Author: "), "John Mason"),
      p(strong("Code Deposit: "), a(
        "https://doi.org/10.6084/m9.figshare.5966242",
        href = "https://doi.org/10.6084/m9.figshare.5966242",
        target = "_blank"
      ))
    )
  ), collapsible = TRUE
))