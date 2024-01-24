

#' Title
#'
#' @return
#' @export
#' @import janitor
#' @examples
preprocess_data <- function(){

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-CONSO-MEN?observations=1","p4")
  data <- as.data.table(read_parquet("raw-data/p4.parquet"))
  data <- clean_names(data)

  data <- data[indicateur %in% "CNA_CONSO_MENAGES_PRODUIT" &
                 operation %in% "P4",
               .(prix_ref,
                 cna_produit,
                 nature,
                 value,
                 period)]
  write_parquet(data,"data/p4.parquet")

  print("p4 chargé")

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-CONSO-SI?observations=1","p3")
  data <- as.data.table(read_parquet("raw-data/p3.parquet"))
  data <- clean_names(data)

  data <- data[,.(sect_inst,
                 prix_ref,
                 operation,
                 cna_produit,
                 value,
                 period)]
  write_parquet(data,"data/p3.parquet")

  print("p3 chargé")

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-CPEB?observations=1","cpeb")
  data <- as.data.table(read_parquet("raw-data/cpeb.parquet"))
  data <- clean_names(data)

  data <- data[,.(cna_activite,
                  prix_ref,
                  operation,
                  nature,
                  value,
                  period)]
  write_parquet(data,"data/cpeb.parquet")

  print("cpeb chargé")

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-CSI?observations=1","csi")
  data <- as.data.table(read_parquet("raw-data/csi.parquet"))
  data <- clean_names(data)

  data <- data[nature %in% "SO" & unit_measure %in% "current_euros",
               .(sect_inst,
                  compte,
                  operation,
                  value,
                  period)]
  write_parquet(data,"data/csi.parquet")

  print("csi chargé")

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-DEP-APU?observations=1","dep_apu")
  data <- as.data.table(read_parquet("raw-data/dep_apu.parquet"))
  data <- clean_names(data)

  data <- data[,.(sect_inst,
                 operation,
                 fonction,
                 value,
                 period)]
  write_parquet(data,"data/dep_apu.parquet")

  print("dep_apu chargé")

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-DETTE-APU?observations=1","dette_apu")
  data <- as.data.table(read_parquet("raw-data/dette_apu.parquet"))
  data <- clean_names(data)

  data <- data[,.(indicateur,
                  sect_inst,
                  prix_ref,
                  nature,
                  value,
                  period)]
  write_parquet(data,"data/dette_apu.parquet")

  print("dette_apu chargé")

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-EMPLOI?observations=1","emploi")
  data <- as.data.table(read_parquet("raw-data/emploi.parquet"))
  data <- clean_names(data)

  data <- data[,.(indicateur,
                  cna_activite,
                  sect_inst,
                  nature,
                  cna_type_emp,
                  unit_measure,
                  value,
                  period)]
  write_parquet(data,"data/emploi.parquet")

  print("emploi chargé")


  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-ERE?observations=1","ere")
  data <- as.data.table(read_parquet("raw-data/ere.parquet"))
  data <- clean_names(data)

  data <- data[,.(prix_ref,
                  operation,
                  cna_produit,
                  value,
                  period)]
  write_parquet(data,"data/ere.parquet")

  print("ere chargé")

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-FBCF-BRANCHE?observations=1","fbcf_branche")
  data <- as.data.table(read_parquet("raw-data/fbcf_branche.parquet"))
  data <- clean_names(data)

  data <- data[,.(cna_activite,
                  prix_ref,
                  value,
                  period)]
  write_parquet(data,"data/fbcf_branche.parquet")

  print("fbcf_branche chargé")

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-FBCF-SI?observations=1","fbcf_si")
  data <- as.data.table(read_parquet("raw-data/fbcf_si.parquet"))
  data <- clean_names(data)

  data <- data[,.(sect_inst,
                  prix_ref,
                  cna_produit,
                  nature,
                  value,
                  period)]
  write_parquet(data,"data/fbcf_si.parquet")

  print("fbcf_si chargé")

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-PIB?observations=1","pib")
  data <- as.data.table(read_parquet("raw-data/pib.parquet"))
  data <- clean_names(data)

  data <- data[,.(sect_inst,
                  prix_ref,
                  operation,
                  nature,
                  value,
                  period)]
  write_parquet(data,"data/pib.parquet")

  print("pib chargé")

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-RDB?observations=1","rdb")
  data <- as.data.table(read_parquet("raw-data/rdb.parquet"))
  data <- clean_names(data)

  data <- data[,.(indicateur,
                  value,
                  period)]
  write_parquet(data,"data/rdb.parquet")

  print("rdb chargé")

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-TEI?observations=1","tei")
  data <- as.data.table(read_parquet("raw-data/tei.parquet"))
  data <- clean_names(data)

  data <- data[,.(cna_activite,
                  cna_produit,
                  value,
                  period)]
  write_parquet(data,"data/tei.parquet")

  print("tei chargé")

  dl_data("https://api.db.nomics.world/v22/series/INSEE/CNA-2014-TOF?observations=1","tof")
  data <- as.data.table(read_parquet("raw-data/tof.parquet"))
  data <- clean_names(data)

  data <- data[,.(sect_inst,
                  compte,
                  operation,
                  type_flux,
                  value,
                  period)]
  write_parquet(data,"data/tof.parquet")

  print("tof chargé")

}
