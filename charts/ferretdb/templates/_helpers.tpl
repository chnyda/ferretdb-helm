{{/*
Return the fully qualified app name.
*/}}
{{- define "ferretdb-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the chart's fullname.
*/}}
{{- define "ferretdb-chart.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 21 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 21 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 21 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Return the pgdb secret name.
*/}}
{{- define "pgdb.secretName" -}}
{{- printf "%s-pgdb-pguser-ferretuser" .Release.Name -}}
{{- end -}}

