#' @param y The matrix with the data, where series are in columns and
#' observations are in rows.
#' @param persistence Persistence matrix \eqn{G}, containing smoothing
#' parameters. Can be:
#' \itemize{
#' \item \code{"independent"} - each series has its own smoothing parameters
#' and no interactions are modelled (all the other values in the matrix are set
#' to zero);
#' \item \code{"dependent"} - each series has its own smoothing parameters, but
#' interactions between the series are modelled (the whole matrix is estimated);
#' \item \code{"group"} each series has the same smoothing parameters for respective
#' components (the values of smoothing parameters are repeated, all the other values
#' in the matrix are set to zero).
#' \item \code{"seasonal"} - each component has its own smoothing parameter, except
#' for the seasonal one, which is common across the time series.
#' \item provided by user as a vector or as a matrix. The value is used by the model.
#' }
#' You can also use the first letter instead of writing the full word.
#' @param transition Transition matrix \eqn{F}. Can be:
#' \itemize{
#' \item \code{"independent"} - each series has its own preset transition matrix
#' and no interactions are modelled (all the other values in the matrix are set
#' to zero);
#' \item \code{"dependent"} - each series has its own transition matrix, but
#' interactions between the series are modelled (the whole matrix is estimated). The
#' estimated model behaves similar to VAR in this case;
#' \item \code{"group"} each series has the same transition matrix for respective
#' components (the values are repeated, all the other values in the matrix are set to
#' zero).
#' \item provided by user as a vector or as a matrix. The value is used by the model.
#' }
#' You can also use the first letter instead of writing the full word.
#' @param h Length of forecasting horizon.
#' @param holdout If \code{TRUE}, holdout sample of size \code{h} is taken from
#' the end of the data.
#' @param ic The information criterion used in the model selection procedure.
#' @param cumulative If \code{TRUE}, then the cumulative forecast and prediction
#' interval are produced instead of the normal ones. This is useful for
#' inventory control systems.
#' @param silent If \code{silent="none"}, then nothing is silent, everything is
#' printed out and drawn. \code{silent="all"} means that nothing is produced or
#' drawn (except for warnings). In case of \code{silent="graph"}, no graph is
#' produced. If \code{silent="legend"}, then legend of the graph is skipped.
#' And finally \code{silent="output"} means that nothing is printed out in the
#' console, but the graph is produced. \code{silent} also accepts \code{TRUE}
#' and \code{FALSE}. In this case \code{silent=TRUE} is equivalent to
#' \code{silent="all"}, while \code{silent=FALSE} is equivalent to
#' \code{silent="none"}. The parameter also accepts first letter of words ("n",
#' "a", "g", "l", "o").
