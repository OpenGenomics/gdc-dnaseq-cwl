{
    "cwlVersion": "v1.0",
    "$graph": [
        {
            "class": "Workflow",
            "id": "#main",
            "requirements": [
                {
                    "class": "ScatterFeatureRequirement"
                },
                {
                    "class": "SchemaDefRequirement",
                    "types": [
                        {
                            "name": "#readgroup.yml/readgroup_meta",
                            "type": "record",
                            "fields": [
                                {
                                    "name": "#readgroup.yml/readgroup_meta/CN",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_meta/DS",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_meta/DT",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_meta/FO",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_meta/ID",
                                    "type": "string"
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_meta/KS",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_meta/LB",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_meta/PI",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_meta/PL",
                                    "type": "string"
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_meta/PM",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_meta/PU",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_meta/SM",
                                    "type": "string"
                                }
                            ]
                        },
                        {
                            "name": "#readgroup.yml/readgroup_fastq_file",
                            "type": "record",
                            "fields": [
                                {
                                    "name": "#readgroup.yml/readgroup_fastq_file/forward_fastq",
                                    "type": "File"
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_fastq_file/reverse_fastq",
                                    "type": [
                                        "null",
                                        "File"
                                    ]
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_fastq_file/readgroup_meta",
                                    "type": "#readgroup.yml/readgroup_meta"
                                }
                            ]
                        },
                        {
                            "name": "#readgroup.yml/readgroups_bam_file",
                            "type": "record",
                            "fields": [
                                {
                                    "name": "#readgroup.yml/readgroups_bam_file/bam",
                                    "type": "File"
                                },
                                {
                                    "name": "#readgroup.yml/readgroups_bam_file/readgroup_meta_list",
                                    "type": {
                                        "type": "array",
                                        "items": "#readgroup.yml/readgroup_meta"
                                    }
                                }
                            ]
                        },
                        {
                            "name": "#readgroup.yml/readgroup_fastq_uuid",
                            "type": "record",
                            "fields": [
                                {
                                    "name": "#readgroup.yml/readgroup_fastq_uuid/forward_fastq_uuid",
                                    "type": "string"
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_fastq_uuid/forward_fastq_file_size",
                                    "type": "int"
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_fastq_uuid/reverse_fastq_uuid",
                                    "type": [
                                        "null",
                                        "string"
                                    ]
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_fastq_uuid/reverse_fastq_file_size",
                                    "type": [
                                        "null",
                                        "int"
                                    ]
                                },
                                {
                                    "name": "#readgroup.yml/readgroup_fastq_uuid/readgroup_meta",
                                    "type": "#readgroup.yml/readgroup_meta"
                                }
                            ]
                        },
                        {
                            "name": "#readgroup.yml/readgroups_bam_uuid",
                            "type": "record",
                            "fields": [
                                {
                                    "name": "#readgroup.yml/readgroups_bam_uuid/bam_uuid",
                                    "type": "string"
                                },
                                {
                                    "name": "#readgroup.yml/readgroups_bam_uuid/bam_file_size",
                                    "type": "int"
                                },
                                {
                                    "name": "#readgroup.yml/readgroups_bam_uuid/readgroup_meta_list",
                                    "type": {
                                        "type": "array",
                                        "items": "#readgroup.yml/readgroup_meta"
                                    }
                                }
                            ]
                        }
                    ]
                },
                {
                    "class": "StepInputExpressionRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "doc": "Small demo alignment workflow for cromwell test",
            "inputs": [
                {
                    "type": "File",
                    "id": "#main/amb"
                },
                {
                    "type": "File",
                    "id": "#main/ann"
                },
                {
                    "type": "string",
                    "id": "#main/bam_name"
                },
                {
                    "type": "File",
                    "id": "#main/bwt"
                },
                {
                    "type": "File",
                    "id": "#main/dict"
                },
                {
                    "type": "File",
                    "id": "#main/fai"
                },
                {
                    "type": "File",
                    "id": "#main/fasta"
                },
                {
                    "type": "File",
                    "id": "#main/fastqc_json"
                },
                {
                    "type": "File",
                    "id": "#main/pac"
                },
                {
                    "type": "#readgroup.yml/readgroup_fastq_file",
                    "id": "#main/readgroup_fastq_pe"
                },
                {
                    "type": "File",
                    "id": "#main/sa"
                },
                {
                    "type": "int",
                    "id": "#main/thread_count"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputSource": "#main/picard_markdup/OUTPUT",
                    "id": "#main/bam"
                },
                {
                    "type": "File",
                    "outputSource": "#main/picard_markdup/METRICS",
                    "id": "#main/metrics"
                }
            ],
            "steps": [
                {
                    "run": "#bwa_record_pe.cwl",
                    "in": [
                        {
                            "source": "#main/root_reference/output",
                            "id": "#main/bwa_pe/fasta"
                        },
                        {
                            "source": "#main/readgroup_fastq_pe",
                            "valueFrom": "$(self.forward_fastq)",
                            "id": "#main/bwa_pe/fastq1"
                        },
                        {
                            "source": "#main/readgroup_fastq_pe",
                            "valueFrom": "$(self.reverse_fastq)",
                            "id": "#main/bwa_pe/fastq2"
                        },
                        {
                            "source": "#main/fastqc_json",
                            "id": "#main/bwa_pe/fastqc_json_path"
                        },
                        {
                            "source": "#main/readgroup_fastq_pe",
                            "valueFrom": "$(self.readgroup_meta)",
                            "id": "#main/bwa_pe/readgroup_meta"
                        },
                        {
                            "source": "#main/thread_count",
                            "id": "#main/bwa_pe/thread_count"
                        }
                    ],
                    "out": [
                        "#main/bwa_pe/OUTPUT"
                    ],
                    "id": "#main/bwa_pe"
                },
                {
                    "run": "#picard_markduplicates.cwl",
                    "in": [
                        {
                            "default": "queryname",
                            "id": "#main/picard_markdup/ASSUME_SORT_ORDER"
                        },
                        {
                            "source": "#main/bwa_pe/OUTPUT",
                            "valueFrom": "$([self])",
                            "id": "#main/picard_markdup/INPUT"
                        },
                        {
                            "source": "#main/bam_name",
                            "id": "#main/picard_markdup/OUTBAM"
                        },
                        {
                            "default": "SILENT",
                            "id": "#main/picard_markdup/VALIDATION_STRINGENCY"
                        }
                    ],
                    "out": [
                        "#main/picard_markdup/OUTPUT",
                        "#main/picard_markdup/METRICS"
                    ],
                    "id": "#main/picard_markdup"
                },
                {
                    "run": "#root_fasta_dnaseq.cwl",
                    "in": [
                        {
                            "source": "#main/fasta",
                            "id": "#main/root_reference/fasta"
                        },
                        {
                            "source": "#main/amb",
                            "id": "#main/root_reference/fasta_amb"
                        },
                        {
                            "source": "#main/ann",
                            "id": "#main/root_reference/fasta_ann"
                        },
                        {
                            "source": "#main/bwt",
                            "id": "#main/root_reference/fasta_bwt"
                        },
                        {
                            "source": "#main/dict",
                            "id": "#main/root_reference/fasta_dict"
                        },
                        {
                            "source": "#main/fai",
                            "id": "#main/root_reference/fasta_fai"
                        },
                        {
                            "source": "#main/pac",
                            "id": "#main/root_reference/fasta_pac"
                        },
                        {
                            "source": "#main/sa",
                            "id": "#main/root_reference/fasta_sa"
                        }
                    ],
                    "out": [
                        "#main/root_reference/output"
                    ],
                    "id": "#main/root_reference"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#bwa_record_pe.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/bwa:6f48348ec54042c9bb420ea5e28eea8f62a81c15b44800673bdfece1f379591b"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "SchemaDefRequirement",
                    "types": [
                        {
                            "$import": "#readgroup.yml/readgroup_meta"
                        },
                        {
                            "$import": "#readgroup.yml/readgroup_fastq_file"
                        },
                        {
                            "$import": "#readgroup.yml/readgroups_bam_file"
                        },
                        {
                            "$import": "#readgroup.yml/readgroup_fastq_uuid"
                        },
                        {
                            "$import": "#readgroup.yml/readgroups_bam_uuid"
                        }
                    ]
                },
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": "$(inputs.thread_count)",
                    "coresMax": "$(inputs.thread_count)",
                    "ramMin": 10000,
                    "ramMax": 10000,
                    "tmpdirMin": "$(Math.ceil(2 * (inputs.fastq1.size + inputs.fastq2.size) / 1048576))",
                    "tmpdirMax": "$(Math.ceil(2 * (inputs.fastq1.size + inputs.fastq2.size) / 1048576))",
                    "outdirMin": "$(Math.ceil(2 * (inputs.fastq1.size + inputs.fastq2.size) / 1048576))",
                    "outdirMax": "$(Math.ceil(2 * (inputs.fastq1.size + inputs.fastq2.size) / 1048576))"
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".pac",
                        ".sa"
                    ],
                    "id": "#bwa_record_pe.cwl/fasta"
                },
                {
                    "type": "File",
                    "id": "#bwa_record_pe.cwl/fastq1"
                },
                {
                    "type": "File",
                    "id": "#bwa_record_pe.cwl/fastq2"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "loadContents": true,
                        "valueFrom": "$(null)"
                    },
                    "id": "#bwa_record_pe.cwl/fastqc_json_path"
                },
                {
                    "type": "#readgroup.yml/readgroup_meta",
                    "id": "#bwa_record_pe.cwl/readgroup_meta"
                },
                {
                    "type": "int",
                    "id": "#bwa_record_pe.cwl/thread_count"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.readgroup_meta['ID'] + \".bam\")"
                    },
                    "id": "#bwa_record_pe.cwl/OUTPUT"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "${\n  function to_rg() {\n    var readgroup_str = \"@RG\";\n    var keys = Object.keys(inputs.readgroup_meta).sort();\n    for (var i = 0; i < keys.length; i++) {\n      var key = keys[i];\n      var value = inputs.readgroup_meta[key];\n      if (key.length == 2 && value != null) {\n        readgroup_str = readgroup_str + \"\\\\t\" + key + \":\" + value;\n      }\n    }\n    return readgroup_str\n  }\n\n  function bwa_aln_33(rg_str, outbam) {\n    var cmd = [\n    \"bwa\", \"aln\", \"-t\", inputs.thread_count, inputs.fasta.path, inputs.fastq1.path, \">\", \"aln.sai1\", \"&&\",\n    \"bwa\", \"aln\", \"-t\", inputs.thread_count, inputs.fasta.path, inputs.fastq2.path, \">\", \"aln.sai2\", \"&&\",\n    \"bwa\", \"sampe\", \"-r\", \"\\\"\" + rg_str + \"\\\"\", inputs.fasta.path, \"aln.sai1\", \"aln.sai2\", inputs.fastq1.path, inputs.fastq2.path, \"|\",\n    \"samtools\", \"view\", \"-Shb\", \"-o\", outbam, \"-\"\n    ];\n    return cmd.join(' ')\n  }\n\n  function bwa_aln_64(rg_str, outbam) {\n    var cmd = [\n    \"bwa\", \"aln\", \"-I\",\"-t\", inputs.thread_count, inputs.fasta.path, inputs.fastq1.path, \">\", \"aln.sai1\", \"&&\",\n    \"bwa\", \"aln\", \"-I\", \"-t\", inputs.thread_count, inputs.fasta.path, inputs.fastq2.path, \">\", \"aln.sai2\", \"&&\",\n    \"bwa\", \"sampe\", \"-r\", \"\\\"\" + rg_str + \"\\\"\", inputs.fasta.path, \"aln.sai1\", \"aln.sai2\", inputs.fastq1.path, inputs.fastq2.path, \"|\",\n    \"samtools\", \"view\", \"-Shb\", \"-o\", outbam, \"-\"\n    ];\n    return cmd.join(' ')\n  }\n\n  function bwa_mem(rg_str, outbam) {\n    var cmd = [\n    \"bwa\", \"mem\", \"-t\", inputs.thread_count, \"-T\", \"0\", \"-R\", \"\\\"\" + rg_str + \"\\\"\",\n    inputs.fasta.path, inputs.fastq1.path, inputs.fastq2.path, \"|\",\n    \"samtools\", \"view\", \"-Shb\", \"-o\", outbam, \"-\"\n    ];\n    return cmd.join(' ')\n  }\n\n  var MEM_ALN_CUTOFF = 70;\n  var fastqc_json = JSON.parse(inputs.fastqc_json_path.contents);\n  var readlength = fastqc_json[inputs.fastq1.basename][\"Sequence length\"];\n  var encoding = fastqc_json[inputs.fastq1.basename][\"Encoding\"];\n  var rg_str = to_rg();\n\n  var outbam = inputs.readgroup_meta['ID'] + \".bam\";\n\n  if (encoding == \"Illumina 1.3\" || encoding == \"Illumina 1.5\") {\n    return bwa_aln_64(rg_str, outbam)\n  } else if (encoding == \"Sanger / Illumina 1.9\") {\n    if (readlength < MEM_ALN_CUTOFF) {\n      return bwa_aln_33(rg_str, outbam)\n    }\n    else {\n      return bwa_mem(rg_str, outbam)\n    }\n  } else {\n    return\n  }\n\n}\n"
                }
            ],
            "baseCommand": [
                "bash",
                "-c"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_markduplicates.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard:092d034713aff237cf07ef28c22a46a113d1a59dc7ec6d71beb72295044a46f8"
                },
                {
                    "class": "InlineJavascriptRequirement",
                    "expressionLib": [
                        "function sum_file_array_size(farr) {\n  var divisor = 1048576;\n  var total = 0;\n  for (var i = 0; i<farr.length; i++) {\n    total += farr[i].size\n  }\n  return Math.ceil(total / divisor);\n}\n",
                        "function file_size_multiplier(fobj, mult) {\n  mult = typeof mult !== 'undefined' ? mult : 1;\n  var divisor = 1048576;\n  return Math.ceil(mult * fobj.size / divisor);\n}\n",
                        "function fastq_files_size(forward, reverse) {\n  var divisor = 1048576;\n  if (reverse == null) {\n    return Math.ceil(forward.size / divisor)\n  } else {\n    return Math.ceil((forward.size + reverse.size) / divisor)\n  }\n}\n"
                    ]
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 1,
                    "ramMin": 15000,
                    "ramMax": 15000,
                    "tmpdirMin": "$(Math.ceil(1.1 * sum_file_array_size(inputs.INPUT)))",
                    "outdirMin": "$(Math.ceil(1.1 * sum_file_array_size(inputs.INPUT)))"
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "ASSUME_SORT_ORDER=",
                        "separate": false
                    },
                    "id": "#picard_markduplicates.cwl/ASSUME_SORT_ORDER"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "INPUT=",
                            "separate": false
                        }
                    },
                    "format": "edam:format_2572",
                    "id": "#picard_markduplicates.cwl/INPUT"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "OUTPUT=",
                        "separate": false
                    },
                    "id": "#picard_markduplicates.cwl/OUTBAM"
                },
                {
                    "default": ".",
                    "type": "string",
                    "inputBinding": {
                        "prefix": "TMP_DIR=",
                        "separate": false
                    },
                    "id": "#picard_markduplicates.cwl/TMP_DIR"
                },
                {
                    "default": "STRICT",
                    "type": "string",
                    "inputBinding": {
                        "prefix": "VALIDATION_STRINGENCY=",
                        "separate": false
                    },
                    "id": "#picard_markduplicates.cwl/VALIDATION_STRINGENCY"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.OUTBAM + \".metrics\")"
                    },
                    "id": "#picard_markduplicates.cwl/METRICS"
                },
                {
                    "type": "File",
                    "format": "edam:format_2572",
                    "outputBinding": {
                        "glob": "$(inputs.OUTBAM)"
                    },
                    "id": "#picard_markduplicates.cwl/OUTPUT"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "$(inputs.OUTBAM + \".metrics\")",
                    "prefix": "METRICS_FILE=",
                    "separate": false
                }
            ],
            "baseCommand": [
                "java",
                "-jar",
                "/usr/local/bin/picard.jar",
                "MarkDuplicates"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#root_fasta_dnaseq.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ubuntu:bionic-20180426"
                },
                {
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        {
                            "entryname": "$(inputs.fasta.basename)",
                            "entry": "$(inputs.fasta)"
                        },
                        {
                            "entryname": "$(inputs.fasta_amb.basename)",
                            "entry": "$(inputs.fasta_amb)"
                        },
                        {
                            "entryname": "$(inputs.fasta_ann.basename)",
                            "entry": "$(inputs.fasta_ann)"
                        },
                        {
                            "entryname": "$(inputs.fasta_bwt.basename)",
                            "entry": "$(inputs.fasta_bwt)"
                        },
                        {
                            "entryname": "$(inputs.fasta_dict.basename)",
                            "entry": "$(inputs.fasta_dict)"
                        },
                        {
                            "entryname": "$(inputs.fasta_fai.basename)",
                            "entry": "$(inputs.fasta_fai)"
                        },
                        {
                            "entryname": "$(inputs.fasta_pac.basename)",
                            "entry": "$(inputs.fasta_pac)"
                        },
                        {
                            "entryname": "$(inputs.fasta_sa.basename)",
                            "entry": "$(inputs.fasta_sa)"
                        }
                    ]
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 1,
                    "ramMin": 500,
                    "ramMax": 500,
                    "tmpdirMin": 1,
                    "tmpdirMax": 1,
                    "outdirMin": 1,
                    "outdirMax": 1
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "id": "#root_fasta_dnaseq.cwl/fasta"
                },
                {
                    "type": "File",
                    "id": "#root_fasta_dnaseq.cwl/fasta_amb"
                },
                {
                    "type": "File",
                    "id": "#root_fasta_dnaseq.cwl/fasta_ann"
                },
                {
                    "type": "File",
                    "id": "#root_fasta_dnaseq.cwl/fasta_bwt"
                },
                {
                    "type": "File",
                    "id": "#root_fasta_dnaseq.cwl/fasta_dict"
                },
                {
                    "type": "File",
                    "id": "#root_fasta_dnaseq.cwl/fasta_fai"
                },
                {
                    "type": "File",
                    "id": "#root_fasta_dnaseq.cwl/fasta_pac"
                },
                {
                    "type": "File",
                    "id": "#root_fasta_dnaseq.cwl/fasta_sa"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "format": "edam:format_1929",
                    "outputBinding": {
                        "glob": "$(inputs.fasta.basename)"
                    },
                    "secondaryFiles": [
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".fai",
                        ".pac",
                        ".sa",
                        "^.dict"
                    ],
                    "id": "#root_fasta_dnaseq.cwl/output"
                }
            ],
            "baseCommand": [
                "true"
            ]
        }
    ]
}