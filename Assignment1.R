
#Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) 
#across a specified list of monitors. 
#The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. 

testscript <- function(directory, pollutant, id = 1:332){
  
  #find + lists the specified files 
  files_list <- list.files(directory, full.names = TRUE)

  # create empty dataframe
  dataset_complete <- numeric() 
  
  #add all items to the combined_data dataframe 
  for (i in id) {
    #temp file holds the values for each of the files one at a time
    temp <- read.csv(files_list[i])
    #dataset complete takes the empty dataset then adds in the data from each file
    #but only the pollutant column
    dataset_complete <- c(dataset_complete, temp[[pollutant]])
}
  mean(dataset_complete, na.rm = TRUE)
}

