create_example_input_data <- function(row_names, column_names) {
    data <- matrix(stats::rnorm(length(column_names) * length(row_names)),
        ncol = length(column_names),
        nrow = length(row_names))
    colnames(data) <- column_names
    rownames(data) <- row_names
    data
}
