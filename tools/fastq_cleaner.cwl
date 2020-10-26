cwlVersion: v1.0
class: CommandLineTool
id: fastq_cleaner
requirements:
  - class: DockerRequirement
    dockerPull: quay.io/ncigdc/fastq_cleaner:69c602582f0f001269b4f85a610ae4d5af1edd1809c0edda6a3ae13053e62ce3
  - class: InlineJavascriptRequirement
    expressionLib:
      $import: ./expression_lib.cwl
  - class: ResourceRequirement
    coresMin: 1
    coresMax: 1
    ramMin: 1800
    ramMax: 1800
    tmpdirMin: $(Math.ceil(1.1 * fastq_files_size(inputs.fastq1, inputs.fastq2)))
    tmpdirMax: $(Math.ceil(1.1 * fastq_files_size(inputs.fastq1, inputs.fastq2)))
    outdirMin: $(Math.ceil(1.1 * fastq_files_size(inputs.fastq1, inputs.fastq2)))
    outdirMax: $(Math.ceil(1.1 * fastq_files_size(inputs.fastq1, inputs.fastq2)))

inputs:
  fastq1:
    type: File
    format: "edam:format_2182"
    inputBinding:
      prefix: --fastq

  fastq2:
    type: File?
    format: "edam:format_2182"
    inputBinding:
      prefix: --fastq2

  reads_in_memory:
    type: int
    default: 500000
    inputBinding:
      prefix: --reads_in_memory

outputs:
  cleaned_fastq1:
    type: File
    format: "edam:format_2182"
    outputBinding:
      glob: $(inputs.fastq1.basename)

  cleaned_fastq2:
    type: File?
    format: "edam:format_2182"
    outputBinding:
      glob: |
       ${
          var res = inputs.fastq2 === null ? null : inputs.fastq2.basename;
          return res;
        }

  result_json:
    type: File
    format: "edam:format_3464"
    outputBinding:
      glob: "result.json"

baseCommand: [/usr/local/bin/fastq_cleaner]
