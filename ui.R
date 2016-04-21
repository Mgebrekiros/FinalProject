#--------------------------------------------------
# R UI Code for the Capstone Project Shiny App
#--------------------------------------------------

suppressWarnings(library(shiny))

shinyUI(fluidPage(
 
    # Application title
    titlePanel(" Word Predication Software"),
    
       fluidRow(HTML("<strong>By Michale Gebrekiros</strong>") ),
    
    
    fluidRow(
      br(),
      p(" If a person writes a text, it can be a single word, two words, three words
        or a phrase his next word can be predicated. For example if he writes two words
         I love , his next word is maybe her, them or  you or others
and most of the time his next word can be predicted,  Try it for your self ")),
    br(),
    br(),
  
        
    # Sidebar layout
    sidebarLayout(
        
        sidebarPanel(width=3,
            textInput("inputString", "write a word or phrase ",value = ""),
            submitButton("Next Word"),
            br(),
            helpText("Help Instruction:"),
            helpText(" Please type a word or pharse into the input box above and then press next word button.
                     Enjoy!",style = "color:purple"),
            br(),
            helpText("Note:"),
            helpText("This mini application  software is developed. 
                     using only three data sets given for a capestone 
                     projct (twitter,news and blog of US) and is submitted
                     for final project assignment "),
            br(),
            h6("You can take the courses:"),   
            a("Data Science Specialization", href = "https://www.coursera.org/data science specialization"),
            
            
            h6("my personal website:"),
            a("http://Mgebrekiros.github.io")
            ),
        
        mainPanel(
            h4("your next word, you would like to write, is may be"),
            verbatimTextOutput("prediction"),
            wellPanel(span(h4(textOutput('text1')),style = "color:#428ee8")),
            wellPanel(span(h4(textOutput('text2')),style = "color:#428ee8"))
            
        )
    )
))