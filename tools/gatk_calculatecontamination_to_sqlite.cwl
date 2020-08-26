cwlVersion: v1.0
class: CommandLineTool
id: gatk_calculatecontamination_to_sqlite
requirements:
  - class: DockerRequirement
    dockerPull: quay.io/ncigdc/picard_metrics_sqlite:cromwell
  - class: InlineJavascriptRequirement
  - class: ResourceRequirement
    coresMin: 1
    coresMax: 1
    ramMin: 1000
    ramMax: 1000
    tmpdirMin: 10
    tmpdirMax: 10
    outdirMin: 10
    outdirMax: 10

inputs:
  bam:
    type: string
    inputBinding:
      prefix: --bam

  input_state:
    type: string
    inputBinding:
      prefix: --input_state

  job_uuid:
    type: string
    inputBinding:
      prefix: --job_uuid

  metric_path:
    type: File
    inputBinding:
      prefix: --metric_path

outputs:
  log:
    type: File
    outputBinding:
      glob: $(inputs.job_uuid+"_picard_gatk_CalculateContamination.log")

  sqlite:
    format: "edam:format_3621"
    type: File
    outputBinding:
      glob: $(inputs.job_uuid + ".db")

baseCommand: [python3, /opt/picard_metrics_sqlite/main.py, --metric_name, gatk_CalculateContamination]
