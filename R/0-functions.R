write.ts <- function(x, file){
	data <- data.frame(time = time(x), x)
	utils::write.csv(data, file = file, row.names = FALSE, na = "")
}
read.ts <- function(file, frequency = 12){
	data <- utils::read.csv(file = file)
	ts(data[, -1],
	   start = data[1,1],
	   frequency = frequency
	)
}
