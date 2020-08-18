cwlVersion: v1.0
class: Workflow
id: alignment_workflow
requirements:
  - class: ScatterFeatureRequirement
  - class: SchemaDefRequirement
    types:
      - $import: ./tools/readgroup.yml
  - class: StepInputExpressionRequirement
  - class: InlineJavascriptRequirement
doc:
    Small demo alignment workflow for cromwell test

inputs:
  fasta: File
  amb: File
  ann: File
  bwt: File
  fai: File
  pac: File
  sa: File
  dict: File

  readgroup_fastq_pe:
    type: ./tools/readgroup.yml#readgroup_fastq_file

  thread_count: int
  fastqc_json: File
  bam_name: string

outputs:
  bam:
    type: File
    outputSource: picard_markdup/OUTPUT
  metrics:
    type: File
    outputSource: picard_markdup/METRICS

steps:
  root_reference:
    run: ./tools/root_fasta_dnaseq.cwl
    in:
      fasta: fasta
      fasta_amb: amb
      fasta_ann: ann
      fasta_bwt: bwt
      fasta_dict: dict
      fasta_fai: fai
      fasta_pac: pac
      fasta_sa: sa
    out: [output]

  bwa_pe:
    run: ./tools/bwa_record_pe.cwl
    in:
      fastq1:
        source: readgroup_fastq_pe
        valueFrom: $(self.forward_fastq)
      fastq2:
        source: readgroup_fastq_pe
        valueFrom: $(self.reverse_fastq)
      fasta: root_reference/output
      readgroup_meta:
        source: readgroup_fastq_pe
        valueFrom: $(self.readgroup_meta)
      fastqc_json_path: fastqc_json
      thread_count: thread_count
    out: [OUTPUT]

  picard_markdup:
    run: ./tools/picard_markduplicates.cwl
    in:
      INPUT:
        source: bwa_pe/OUTPUT
        valueFrom: $([self])
      ASSUME_SORT_ORDER:
        default: queryname
      VALIDATION_STRINGENCY:
        default: SILENT
      OUTBAM: bam_name
    out: [OUTPUT, METRICS]