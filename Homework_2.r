HELP
articles <- read.csv(url("https://raw.githubusercontent.com/go95/big_data_intro/master/Abdulkadiroglou.csv"))

hirsch_index <- function(articles) {

  citations <- articles [["Citations"]]
  citations [is.na(citations)] <- 0
  sort(citations, decreasing = TRUE)
  art_number <- length(citations)

  for (x in 1:art_number) {
    if (citations[x] > x) {
      x <- x + 1
    } else break
  }
  if (citations[x] < x) {
    x <- x - 1
  }

  return(x)
}
print(hirsch_index(articles))
