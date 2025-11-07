{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "priority-classes.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "priority-classes.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "priority-classes.selectorLabels" -}}
app.kubernetes.io/name: {{ include "priority-classes.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "priority-classes.labels" -}}
{{ include "priority-classes.selectorLabels" . }}
app.giantswarm.io/branch: {{ .Values.project.branch | replace "#" "-" | replace "/" "-" | replace "." "-" | trunc 63 | trimSuffix "-" | quote }}
application.giantswarm.io/commit: {{ .Values.project.commit | quote }}
application.kubernetes.io/managed-by: {{ .Release.Service | quote }}
application.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | quote }}
giantswarm.io/managed-by: {{ .Release.Name | quote }}
giantswarm.io/service-type: {{ .Values.serviceType }}
helm.sh/chart: {{ include "priority-classes.chart" . | quote }}
{{- end -}}

