{{- define "authentik.fullname" -}}
{{ .Release.Name }}-authentik
{{- end }}

{{- define "authentik.labels" -}}
app.kubernetes.io/name: {{ include "authentik.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end }}

{{- define "authentik.name" -}}
authentik
{{- end }}

