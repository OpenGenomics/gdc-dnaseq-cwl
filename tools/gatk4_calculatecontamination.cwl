cwlVersion: v1.0
class: CommandLineTool
id: gatk4_calculatecontamination
requirements:
  - class: DockerRequirement
    dockerPull: quay.io/ncigdc/gatk:4.1.8.aws_fix
  - class: InlineJavascriptRequirement
  - class: ResourceRequirement
    coresMin: 4
    coresMax: 4
    ramMin: 7200
    ramMax: 7200

inputs:
  input:
    type: File
    inputBinding:
      prefix: --input

  tmp_dir:
    type: string
    default: "."
    inputBinding:
      prefix: --tmp-dir

  bam_nameroot:
    type: string

outputs:
  output:
    type: File
    outputBinding:
      glob: $(inputs.bam_nameroot + "_contamination.table")

arguments:
  - valueFrom: $(inputs.bam_nameroot + "_contamination.table")
    prefix: --output
    separate: true

baseCommand: [java, -jar, /opt/gatk-package-4.1.8.1-8-gfcb7889-SNAPSHOT-local.jar, CalculateContamination]
