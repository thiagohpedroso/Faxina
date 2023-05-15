
#' Responsavel pela limpeza
#'
#' @param data_limpeza
#'
#' @export
#'
resp_limpeza <- function(data_limpeza) {

  datas_sabado <- seq(as.Date("2023-01-07"),
                      as.Date("2023-12-30"),
                      by = "7 day")

  pessoas <- c("Teca to estressada",
               "Lidy lava tapetes",
               "Thiti deixa que eu faço no R")


  posicao <- match(as.Date(data_limpeza), datas_sabado)

  responsavel <- pessoas[(posicao - 1) %% 3 + 1]

  cat("O responsável pela limpeza no dia",
      format(as.Date(data_limpeza), "%d/%m/%Y"),
      "?",
      responsavel)
}

