% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/icd2omop.R, R/icd2omop2.R
\name{icd2omop}
\alias{icd2omop}
\title{icd2omop}
\usage{
icd2omop(
  db_con,
  codes,
  cdm_schema = NULL,
  icd_wildcard = "x",
  dbms_wildcard = "\%",
  translate_from = "ICD9CM",
  translate_to = "SNOMED"
)

icd2omop(
  db_con,
  codes,
  cdm_schema = NULL,
  icd_wildcard = "x",
  dbms_wildcard = "\%",
  translate_from = "ICD9CM",
  translate_to = "SNOMED"
)
}
\arguments{
\item{db_con}{database connection object}

\item{codes}{vector of ICD codes with or without wildcards}

\item{cdm_schema}{name of CDM schema}

\item{icd_wildcard}{wordcard indicator in icd codes. for example if code is R47.x, put "x"}

\item{dbms_wildcard}{wildcard indicator for dbms SIMILAR TO function.}

\item{translate_from}{ICD codes to start}

\item{translate_to}{codes to transfer to to get to omop. usually SNOMED}

\item{schema}{if there is a database schema, TRUE. defaults of FALSE}

\item{schema.name}{name of databsae schema. only required if schema is TRUE}

\item{icd_version}{ICD9CM or ICD10CM. Make sure to enter the same way it is included in the concept table}
}
\value{
a dataframe of icd, SNOMED, OMOP concept codes, and the original codes to be matched (`orig_code`)

a dataframe of icd, SNOMED, and OMOP concept codes
}
\description{
this function will only find exact ICD matches. It is faster than
icd2omop() because it does not need to use a join to find wildcards. It also does not
return a match with the beginning icd codes however. It is important to check that
all codes searched have found a match
}
