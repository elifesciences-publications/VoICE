if(.Platform$OS.type=="windows" & file.exists("./.libraries")){.libPaths("./.libraries")}
comArgs <- commandArgs(TRUE)

options(stringsAsFactors=FALSE)
options(warn=-1)
pupil.dir <- comArgs[1]

load(paste(comArgs[1],"voice_results/assign_workspace.Rdata",sep=""))

naout <- subset(names(saveList$out.assign),is.na(saveList$out.assign))

newColor <- colors()[!colors()%in%unique(saveList$out.assign)][sample(1:length(!colors()%in%unique(saveList$out.assign)),1)]

saveList$out.assign[naout] <- newColor

save(file=paste(comArgs[1],"voice_results/assign_workspace.Rdata",sep=""),saveList)