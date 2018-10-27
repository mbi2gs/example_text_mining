library(stringr)

extract_sonnets <- function(filepath){
  sonnets = list()
  sr = read_lines(file = filepath)
  
  sonnet_index = 0
  for (line in sr){
    if (str_detect(line, "\\d+")){
      sonnet_index = as.numeric(str_trim(line, side="both"))
      sonnets[[sonnet_index]] = ""
      print(sonnet_index)
    }
    else {
      # If the line is not numeric or empty, it must be part of the current sonnet
      if (str_length(str_trim(line)) > 0 && sonnet_index > 0){
        if (length(sonnets[[sonnet_index]]) == 0){
          sonnets[[sonnet_index]] = line
        }
        else {
          sonnets[[sonnet_index]] = paste(sonnets[[sonnet_index]], line)
        }
        
      } 
    }
  }
  return(sonnets)
}



