{{/*
Expand the name of the chart.
*/}}
{{- define "sanity.name1" -}}
{{- default "TemplateDrama" .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
