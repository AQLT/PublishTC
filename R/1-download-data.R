library(publishTC)
# source("R/0-functions.R")
for (spec in list.files("data", pattern = "yml$",full.names = TRUE)){
	data <- yaml::read_yaml(spec)
	if (!dir.exists(file.path("data", data$dataset)))
		dir.create(file.path("data", data$dataset))

	data_insee <- AQLTools::lectureBDM(sapply(data$series, `[[`, "idbank"))
	colnames(data_insee) <- names(data$series)
	last_date <- format(zoo::as.Date(time(data_insee)), "%Y_%m")
	last_date <- last_date[length(last_date)]
	file <- sprintf(
		"data/%s/%s.csv",
		data$dataset,
		last_date
	)
	if (file.exists(file))
		next;
	write.ts(data_insee, file)
}
