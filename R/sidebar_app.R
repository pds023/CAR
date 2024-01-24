

#' Title
#'
#' @return
#' @export
#'
#' @examples
sidebar_app <- function() {
  return(sidebar(title = "Filtres",
                 accordion(
                   accordion_panel(title = "P4",
                                   pickerInput("p4_prix_ref","Prix",choices = c(),multiple = TRUE),
                                   pickerInput("p4_cna_produit","Produit",choices = c(),multiple = TRUE),
                                   pickerInput("p4_nature","Nature",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "p4_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_p4",value = FALSE)
                   ),
                   accordion_panel(title = "P3",
                                   pickerInput("p3_sect_inst","Secteur",choices = c(),multiple = TRUE),
                                   pickerInput("p3_prix_ref","Prix",choices = c(),multiple = TRUE),
                                   pickerInput("p3_operation","Opération",choices = c(),multiple = TRUE),
                                   pickerInput("p3_cna_produit","Produit",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "p3_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_p3",value = FALSE)
                   ),
                   accordion_panel(title = "CPEB",
                                   pickerInput("cpeb_cna_activite","Activité",choices = c(),multiple = TRUE),
                                   pickerInput("cpeb_prix_ref","Prix",choices = c(),multiple = TRUE),
                                   pickerInput("cpeb_operation","Opération",choices = c(),multiple = TRUE),
                                   pickerInput("cpeb_nature","Nature",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "cpeb_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_cpeb",value = FALSE)
                   ),
                   accordion_panel(title = "CSI",
                                   pickerInput("csi_sect_inst","Secteur",choices = c(),multiple = TRUE),
                                   pickerInput("csi_compte","Compte",choices = c(),multiple = TRUE),
                                   pickerInput("csi_operation","Opération",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "csi_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_csi",value = FALSE)
                   ),
                   accordion_panel(title = "APU",
                                   h3("Dépenses"),
                                   pickerInput("dep_apu_sect_inst","Secteur",choices = c(),multiple = TRUE),
                                   pickerInput("dep_apu_operation","Opération",choices = c(),multiple = TRUE),
                                   pickerInput("dep_apu_fonction","Fonction",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "dep_apu_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_dep_apu",value = FALSE),
                                   h3("Dette"),
                                   pickerInput("dette_apu_indicateur","Indicateur",choices = c(),multiple = TRUE),
                                   pickerInput("dette_apu_sect_inst","Secteur",choices = c(),multiple = TRUE),
                                   pickerInput("dette_apu_prix_ref","Prix",choices = c(),multiple = TRUE),
                                   pickerInput("dette_apu_nature","Nature",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "dette_apu_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_dette_apu",value = FALSE)
                   ),
                   accordion_panel(title = "Emploi",
                                   pickerInput("emploi_indicateur","Indicateur",choices = c(),multiple = TRUE),
                                   pickerInput("emploi_cna_activite","Activité",choices = c(),multiple = TRUE),
                                   pickerInput("emploi_sect_inst","Secteur",choices = c(),multiple = TRUE),
                                   pickerInput("emploi_nature","Nature",choices = c(),multiple = TRUE),
                                   pickerInput("emploi_cna_type_emp","Type",choices = c(),multiple = TRUE),
                                   pickerInput("emploi_unit_measure","Unité",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "emploi_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_emploi",value = FALSE)
                   ),
                   accordion_panel(title = "ERE",
                                   pickerInput("ere_prix_ref","prix",choices = c(),multiple = TRUE),
                                   pickerInput("ere_operation","Opération",choices = c(),multiple = TRUE),
                                   pickerInput("ere_cna_produit","Produit",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "ere_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_ere",value = FALSE)
                   ),
                   accordion_panel(title = "FBCF",
                                   h3("Branche"),
                                   pickerInput("fbcf_branche_cna_activite","Activité",choices = c(),multiple = TRUE),
                                   pickerInput("fbcf_branche_prix_ref","Prix",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "fbcf_branche_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_fbcf_branche",value = FALSE),
                                   h3("Dette"),
                                   pickerInput("fbcf_si_sect_inst","Secteur",choices = c(),multiple = TRUE),
                                   pickerInput("fbcf_si_prix_ref","Prix",choices = c(),multiple = TRUE),
                                   pickerInput("fbcf_si_nature","Nature",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "fbcf_si_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_fbcf_si",value = FALSE)
                   ),
                   accordion_panel(title = "PIB",
                                   pickerInput("pib_sect_inst","Secteur",choices = c(),multiple = TRUE),
                                   pickerInput("pib_prix_ref","Prix",choices = c(),multiple = TRUE),
                                   pickerInput("pib_operation","Opération",choices = c(),multiple = TRUE),
                                   pickerInput("pib_nature","Nature",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "pib_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_pib",value = FALSE)
                   ),
                   accordion_panel(title = "RDB",
                                   pickerInput("rdb_indicateur","Indicateur",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "rdb_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_rdb",value = FALSE)
                   ),
                   accordion_panel(title = "TEI",
                                   pickerInput("tei_cna_activite","Activité",choices = c(),multiple = TRUE),
                                   pickerInput("tei_cna_produit","Produit",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "tei_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_tei",value = FALSE)
                   ),
                   accordion_panel(title = "TOF",
                                   pickerInput("tof_sect_inst","Secteur",choices = c(),multiple = TRUE),
                                   pickerInput("tof_compte","Compte",choices = c(),multiple = TRUE),
                                   pickerInput("tof_operation","Opération",choices = c(),multiple = TRUE),
                                   pickerInput("tof_type_flux","Flux",choices = c(),multiple = TRUE),
                                   actionButton(inputId = "tof_reset",label = "Réinitialiser"),
                                   materialSwitch(inputId = "evol_tof",value = FALSE)
                   )
                 )
  ))
}
