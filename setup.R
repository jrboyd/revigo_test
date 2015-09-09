source('ex_goLists.R')

prep_goList = function(goList){
  goList = gsub(" ", "\t", goList)
  goList = gsub("\t", "\\\\t", goList)
  goList = gsub("\n", "\\\\n", goList)
  return(goList)
}