cwlVersion: v1.0
class: CommandLineTool
id: gatk4_getpileupsummaries
requirements:
  - class: DockerRequirement
    dockerPull: quay.io/ncigdc/gatk:4.1.8.aws_fix
  - class: InlineJavascriptRequirement

inputs:
  input:
    format: "edam:format_2572"
    type: File
    inputBinding:
      prefix: --input
    secondaryFiles:
      - ^.bai

  tmp_dir:
    type: string
    default: "."
    inputBinding:
      prefix: --tmp-dir

  variant:
    type: File
    inputBinding:
      prefix: --variant

  reference:
    type: File
    inputBinding:
      prefix: -R

outputs:
  output:
    type: File
    outputBinding:
      glob: $(inputs.input.nameroot + "_pileupsummaries.table")

arguments:
  - valueFrom: $(inputs.input.nameroot + "_pileupsummaries.table")
    prefix: --output
    separate: true

baseCommand: [java, -jar, /opt/gatk-package-4.1.8.1-8-gfcb7889-SNAPSHOT-local.jar, GetPileupSummaries]
