cwlVersion: v1.0
id: picard_collectoxogmetrics
requirements:
  - class: DockerRequirement
    dockerPull: quay.io/ncigdc/picard:2.23.aws_fix
  - class: InlineJavascriptRequirement
  - class: ResourceRequirement
    coresMin: 2
    coresMax: 2
    ramMin: 14400
    ramMax: 14400
    tmpdirMin: 5
    tmpdirMax: 5
    outdirMin: 5
    outdirMax: 5

class: CommandLineTool

inputs:
  DB_SNP:
    type: File
    format: "edam:format_3016"
    inputBinding:
      prefix: DB_SNP=
      separate: false

  INPUT:
    type: File
    format: "edam:format_2572"
    inputBinding:
      prefix: INPUT=
      separate: false

  REFERENCE_SEQUENCE:
    type: File
    format: "edam:format_1929"
    inputBinding:
      prefix: REFERENCE_SEQUENCE=
      separate: false

  TMP_DIR:
    type: string
    default: .
    inputBinding:
      prefix: TMP_DIR=
      separate: false

  USE_OQ:
    type: string
    default: "true"
    inputBinding:
      prefix: USE_OQ=
      separate: false

  VALIDATION_STRINGENCY:
    default: STRICT
    type: string
    inputBinding:
      prefix: VALIDATION_STRINGENCY=
      separate: false

  CONTEXTS:
    type:
      type: array
      items: string
      inputBinding:
        prefix: CONTEXTS=
        separate: false

outputs:
  OUTPUT:
    type: File
    outputBinding:
      glob: $(inputs.INPUT.basename + ".oxometrics")

arguments:
  - valueFrom: $(inputs.INPUT.basename + ".oxometrics")
    prefix: OUTPUT=
    separate: false

baseCommand: [java, -jar, /opt/picard-2.23.3-6-g4463289-SNAPSHOT-all.jar, CollectOxoGMetrics]
