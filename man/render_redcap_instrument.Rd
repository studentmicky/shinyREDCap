% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mod_REDCap.R
\name{shinyREDCap_textInput}
\alias{shinyREDCap_textInput}
\alias{shinyREDCap_dateInput}
\alias{shinyREDCap_dropdown}
\alias{shinyREDCap_truefalse}
\alias{shinyREDCap_yesno}
\alias{shinyREDCap_radio}
\alias{shinyREDCap_checkbox}
\alias{shinyREDCap_notes}
\alias{shinyREDCap_integer}
\alias{render_redcap_instrument}
\title{Render REDCap Instrument}
\usage{
shinyREDCap_textInput(id, field_label, value = NULL, placeholder = NULL, ...)

shinyREDCap_dateInput(id, field_label, value = NULL, ...)

shinyREDCap_dropdown(id, field_label, required, choices, value = NULL, ...)

shinyREDCap_truefalse(id, field_label, required, value = NULL, ...)

shinyREDCap_yesno(id, field_label, required, value = NULL, ...)

shinyREDCap_radio(id, field_label, required, choices, value = NULL, ...)

shinyREDCap_checkbox(id, field_label, choices, value = NULL, ...)

shinyREDCap_notes(id, field_label, value = NULL, ...)

shinyREDCap_integer(id, field_label, value = NULL, ...)

render_redcap_instrument(
  shinyREDCap_type,
  field_name,
  field_label,
  required,
  choices,
  current_subject_data = NULL
)
}
\arguments{
\item{id}{Unique REDCap question identifier}

\item{field_label}{Question text, with formatting}

\item{value}{Default value or previous data if question has previously been answered}

\item{placeholder}{Placeholder text to help a reviewer decide how to answer the question}

\item{...}{Any additional parameters}

\item{required}{Is this a required REDCap question type?}

\item{choices}{REDCap choices for the question.}

\item{current_subject_data}{Previous REDCap data on the current subject}
}
\description{
Collection of functions to map REDCap question types to native Shiny widgets.
}
\keyword{internal}
