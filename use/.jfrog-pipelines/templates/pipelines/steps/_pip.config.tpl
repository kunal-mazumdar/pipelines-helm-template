{{- define "pipeline.execution" }}
{{ if .execution }}
execution:      
    {{ if .execution.onStart }}
    onStart:
        {{ range $key, $execute := .execution.onStart }}
        - {{ . }}
        {{- end }}
    {{- end }}
    {{ if .execution.onExecute }}          
    onExecute:
        {{ range $key, $execute := .execution.onExecute }}
        - {{ . }}
        {{- end }}
    {{- end }}  
    {{ if .execution.onSuccess }}          
    onSuccess:
        {{ range $key, $execute := .execution.onSuccess }}
        - {{ . }}
        {{- end }}
    {{- end }}  
    {{ if .execution.onFailure }}          
    onFailure:
        {{ range $key, $execute := .execution.onFailure }}
        - {{ . }}
        {{- end }}
    {{- end }}        
{{- end }}  
{{- end }}