#' Remove files or directories
#'
#' This function uses the `mc` command to remove files or directories
#'  at the specified target location.
#'
#' @param target Character string specifying the target file or
#'  directory path to be removed.
#' @param recursive Logical indicating whether to recursively remove
#'  directories. Default is \code{FALSE}.
#' @param flags Additional flags to be passed to the `rm` command. 
#' Default is an empty string.
#' @param verbose Logical indicating whether to list files removed.
#'  Default is \code{FALSE}.
#' @details see `mc("rm -h")` for details.
#' @inherit mc return
#'
#' @examplesIf interactive()
#'
#' # Remove a file
#' mc_rm("path/to/file.txt")
#'
#' # Remove a directory recursively
#' mc_rm("path/to/directory", recursive = TRUE)
#' 
#' @export
mc_rm <- function(target, recursive = FALSE, flags = "", verbose = FALSE) {
  if (recursive) {
    flags <- paste("--recursive --force", flags)
  }
  
  cmd <- paste("rm", flags, paste(target, collapse = " "))
  cmd <- gsub("\\s+", " ", cmd)
  mc(cmd, verbose = verbose)
}

