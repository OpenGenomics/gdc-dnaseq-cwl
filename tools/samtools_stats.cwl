cwlVersion: v1.0
class: CommandLineTool
id: samtools_stats
requirements:
  - class: DockerRequirement
    dockerPull: quay.io/ncigdc/samtools:147bd4cc606a63c7435907d97fea6e94e9ea9ed58c18f390cab8bc40b1992df7
  - class: InlineJavascriptRequirement
  - class: ResourceRequirement
    coresMin: 8
    coresMax: 8
    ramMin: 14400
    ramMax: 14400
    tmpdirMin: 5
    outdirMin: 5

inputs:
  INPUT:
    type: File
    format: "edam:format_2572"
    inputBinding:
      position: 1

  threads:
    type: int
    inputBinding:
      position: 0
      prefix: -@

outputs:
  OUTPUT:
    type: File
    outputBinding:
      glob: $(inputs.INPUT.nameroot + ".stats")

stdout: $(inputs.INPUT.nameroot + ".stats")

baseCommand: [/usr/local/bin/samtools, stats]
