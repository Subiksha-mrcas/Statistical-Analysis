
decimal_num <- 75
binary_num <- as.integer(intToBits(decimal_num))
cat("Decimal to Binary:", paste(rev(binary_num), collapse = ""), "\n")

# Convert Decimal to Octal
decimal_num <- 1024
octal_num <- sprintf("%o", decimal_num)
cat("Decimal to Octal:", octal_num, "\n")


# Manual Conversion: Decimal to Binary
decimal_to_binary <- function(decimal_num) {
    binary_num <- character(0)
    while (decimal_num > 0) {
        remainder <- decimal_num %% 2
        binary_num <- c(remainder, binary_num)
        decimal_num <- decimal_num %/% 2
    }
    return(paste(binary_num, collapse = ""))
}
 
decimal_num <- 75
cat("Decimal to Binary:", decimal_to_binary(decimal_num), "\n")
