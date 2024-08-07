#' Extract spawning stock biomass (ssb) 
#'
#' Spawning biomass may be defined as all males or some combination of males and
#' females
#'
#' @param M list object created by read_admb function
#' @return dataframe of spawning biomass
#' 
.get_ssb_rel_df <- function(M)
{
    n <- length(M)
    mdf <- NULL
    for (i in 1:n)
    {
        A <- M[[i]]
        df <- data.frame(year = A$SSB[,1])
        df$Model <- names(M)[i]
        df$year <- A$SSB[,1]
        df$ssb  <- A$SSB[,2] / M[[1]]$SSB[1:length(A$SSB[,2]),2]
        df$lb   <- A$SSB[,4] / M[[1]]$SSB[1:length(A$SSB[,2]),4]
        df$ub   <- A$SSB[,5] / M[[1]]$SSB[1:length(A$SSB[,2]),5]
        mdf     <- rbind(mdf, df)
    }
    return(mdf)
}


#' Plot predicted spawning stock biomass (ssb)
#'
#' Spawning biomass may be defined as all males or some combination of males and
#' females
#'
#' @param M List object(s) created by read_admb function
#' @param xlab the x-label of the figure
#' @param ylab the y-label of the figure
#' @param ylim is the upper limit of the figure
#' @param alpha the opacity of the ribbon
#' @return Plot of model estimates of spawning stock biomass 
#' @export
#' 
plot_ssb_rel <- function(M, xlab = "Year", ylab = "Relative female spawning biomass", ylim = NULL, xlim=NULL,legend=TRUE, breaks=seq(1990,2022,5), alpha = 0.1)
{
    xlab <- paste0("\n", xlab)
    ylab <- paste0(ylab, "\n")
    
    mdf <- .get_ssb_rel_df(M)
    
    p <- ggplot(mdf) + labs(x = xlab, y = ylab)
    
    if (!is.null(xlim))
      p <- p + scale_x_continuous(limits=xlim,breaks=breaks)  
    else
      p <- p + scale_x_continuous(breaks=breaks)  

    if (is.null(ylim))
    {
        p <- p + expand_limits(y = 0)
    } else {
        p <- p + ylim(ylim[1], ylim[2])        
    }
    if (length(M) == 1)
    {
        p <- p + geom_line(aes(x = year, y = ssb)) +
            geom_ribbon(aes(x = year, ymax = ub, ymin = lb), alpha = alpha,fill="salmon")
    } else {
        p <- p + geom_line(aes(x = year, y = ssb, col = Model),size=1.2) +
            geom_ribbon(aes(x = year, ymax = ub, ymin = lb, fill = Model), alpha = alpha)
    }
    
    if (!legend)
        p <- p + theme(legend.position="none") + guides(size=FALSE,fill=FALSE,alpha=FALSE,col=FALSE) 

    if(!.OVERLAY) p <- p + facet_wrap(~Model)

    return(p + .THEME)
}



