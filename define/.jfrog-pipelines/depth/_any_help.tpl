{{- define "sanity.name1" -}}
{{- default "Drama" .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
