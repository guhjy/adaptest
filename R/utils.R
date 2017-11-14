#' Generic print method for data_adapt class
#'
#' Customized informative print method for examining data-adaptive statistics
#'
#' @param x data-adaptive statistical object of class \code{data_adapt} as
#'        returned by \code{adaptest}.
#' @param ... additional arguments passed to \code{print} as necessary
#'
#' @export
#'
print.data_adapt <- function(x, ...) {
  print('The top covariates are')
  print(get_composition(x, type = 'big')[[1]])
  print('The ATE estiamtes are')
  print(x$DE)
  print('The raw p-values are')
  print(x$p_value)
  print('The adjusted p-values are')
  print(x$q_value)
  print('The top mean CV-rank are (the smaller the better)')
  print(x$mean_rank_top)
  print(paste('The percentage of appearing in top', length(x$top_colname),
              'are (the larger the better)'))
  print(x$prob_in_top*100)
  print('The covariates still significant are')
  print(x$significant_q)
  print('Their compositions are')
  print(get_composition(x, type = 'small')[[1]])
}

#' Method of \code{shinyprint} for objects of class \code{data_adapt}
#'
#' Provides HTML-based printing utility for examining data-adaptive statistics
#'
#' @param x data-adaptive statistical object of class \code{data_adapt}
#'        as returned by \code{adaptest}
#'
#' @importFrom R2HTML HTML
#'
#' @export shinyprint.data_adapt
#'
shinyprint.data_adapt <- function(x) {
  print.data_adapt(x)
  HTML(paste('<b> The covariates still significant are </b>',
             paste(x[[5]], collapse = ' '),
             sep = '<br/>'
  ))
}


#' Generic plot method for data_adapt class
#'
#' Customized plotting method for easily examining data-adaptive statistics
#'
#' @param x data-adaptive statistical object of class \code{data_adapt} as
#'       returned by \code{adaptest}
#' @param plot_type character vector specifying which of the two types of plots
#'        to generate: "biomarker" for a plot sorted average CV-rank, or "adapt_param"
#'        for a plot sorted by p-values with labels corresponding to indices
#' @param ... additional arguments passed to \code{plot} as necessary
#'
#' @importFrom graphics abline plot
#' @importFrom calibrate textxy
#'
#' @export
#'
plot.data_adapt <- function(x, ..., plot_type = c("biomarker", "adapt_param")) {
  top_index <- x$top_index
  DE <- x$DE
  p_value <- x$p_value
  q_value <- x$q_value
  significant_q <- x$significant_q

  mean_rank_top <- x$mean_rank_top
  prob_in_top <- x$prob_in_top
  n_top.want <- length(top_index)

  if ("biomarker" %in% plot_type) {
    # Plot sorted average CV-rank
    plot(mean_rank_top, ylab = 'Mean CV-rank', pch = 20,
         main = 'Mean CV-rank of selected covariates \n (Smaller the better)')

    calibrate::textxy((1:n_top.want) - 0.3, mean_rank_top + 0.5, top_index,
                      offset = .6)
    abline(a = 0, b = 1, lty = 3)
  }

  if ("adapt_param" %in% plot_type) {
    # plot sorted p-values, labeled with index
    temp.top_index <- c(1:n_top.want)[order(q_value)]
    plot(sort(q_value),
         pch = 20,
         ylab = 'Adjusted P-value',
         main = 'Adjusted p-value of selected covariates \n (Smaller the better)'
         )
    calibrate::textxy((1:n_top.want) - 0.3, sort(q_value), temp.top_index,
                      offset = 1)
    abline(h = 0.05, lty = 2)
  }
}


#' Title
#'
#' @param x
#' @param ...
#' @param type
#'
#' @return
#' @export
#' @method summary data_adapt
#'
#' @examples
#' #NA
summary.data_adapt <- function(x, ..., type = 'adapt_param') {
  data_adapt_param = 1:length(x$DE)
  DE = x$DE
  p_value = x$p_value
  q_value = x$q_value

  top_biomarker = x$top_index
  mean_rank_top = x$mean_rank_top
  prob_in_top = x$prob_in_top*100

  if (type == 'adapt_param'){
    table_out <- data.frame(data_adapt_param, DE, p_value, q_value)
    colnames(table_out) <- c('data-adaptive parameters', 'Differential expression', 'p-values', 'q-values')
    print(table_out)
  }


  if (type == 'biomarker'){
    # len <- length(top_biomarker)
    # table_out <- data.frame(top_biomarker, mean_rank_top, prob_in_top)
    # colnames(table_out) <- c('biomakers', 'mean rank', paste('% appear in top ', len))
    # print(table_out)
  }

}