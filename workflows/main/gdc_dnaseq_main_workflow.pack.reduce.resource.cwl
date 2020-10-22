{
    "cwlVersion": "v1.0",
    "$graph": [
        {
            "class": "CommandLineTool",
            "id": "#bam_readgroup_to_contents.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/bam_readgroup_to_json:685e4954df4d70f89315a256ecfb707a2dd80b9fcf0d8d10918398df938c6a28"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 1,
                    "tmpdirMax": 1,
                    "outdirMin": 1,
                    "outdirMax": 1
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
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "format": "edam:format_2572",
                    "inputBinding": {
                        "prefix": "--bam_path"
                    },
                    "id": "#bam_readgroup_to_contents.cwl/INPUT"
                },
                {
                    "type": "string",
                    "default": "strict",
                    "inputBinding": {
                        "prefix": "--mode"
                    },
                    "id": "#bam_readgroup_to_contents.cwl/MODE"
                }
            ],
            "outputs": [
                {
                    "type": {
                        "type": "array",
                        "items": "string"
                    },
                    "outputBinding": {
                        "glob": "*.json",
                        "outputEval": "${\n  var output_array = [];\n  for (var i = 0; i < self.length; i++) {\n    var data = self[i].contents;\n    output_array.push(data);\n  }\n  return output_array;\n}\n",
                        "loadContents": true
                    },
                    "id": "#bam_readgroup_to_contents.cwl/OUTPUT"
                },
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "output.log"
                    },
                    "id": "#bam_readgroup_to_contents.cwl/log"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/bam_readgroup_to_json"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#bam_readgroup_to_json.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/bam_readgroup_to_json:685e4954df4d70f89315a256ecfb707a2dd80b9fcf0d8d10918398df938c6a28"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 1,
                    "tmpdirMax": 1,
                    "outdirMin": 1,
                    "outdirMax": 1
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "format": "edam:format_2572",
                    "inputBinding": {
                        "prefix": "--bam_path"
                    },
                    "id": "#bam_readgroup_to_json.cwl/INPUT"
                },
                {
                    "type": "string",
                    "default": "strict",
                    "inputBinding": {
                        "prefix": "--mode"
                    },
                    "id": "#bam_readgroup_to_json.cwl/MODE"
                }
            ],
            "outputs": [
                {
                    "format": "edam:format_3464",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "outputBinding": {
                        "glob": "*.json",
                        "outputEval": "${ return self.sort(function(a,b) { return a.location > b.location ? 1 : (a.location < b.location ? -1 : 0) }) }\n"
                    },
                    "id": "#bam_readgroup_to_json.cwl/OUTPUT"
                },
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "output.log"
                    },
                    "id": "#bam_readgroup_to_json.cwl/log"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/bam_readgroup_to_json"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biobambam2_bamtofastq.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/biobambam:533ed9be5fd34b177b5a906262c615bff1a4cdc2c84b78c2244cbd7283842120"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 8,
                    "ramMin": 15300,
                    "ramMax": 15300,
                    "tmpdirMin": "$(Math.ceil(0.9 * inputs.filename.size / 1048576))",
                    "tmpdirMax": "$(Math.ceil(0.9 * inputs.filename.size / 1048576))",
                    "outdirMin": "$(Math.ceil(0.9 * inputs.filename.size / 1048576))",
                    "outdirMax": "$(Math.ceil(0.9 * inputs.filename.size / 1048576))"
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "default": "tempfq",
                    "inputBinding": {
                        "prefix": "T=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/T"
                },
                {
                    "type": "int",
                    "default": 1,
                    "inputBinding": {
                        "prefix": "collate=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/collate"
                },
                {
                    "type": "string",
                    "default": "QCFAIL,SECONDARY,SUPPLEMENTARY",
                    "inputBinding": {
                        "prefix": "exclude=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/exclude"
                },
                {
                    "format": "edam:format_2572",
                    "type": "File",
                    "inputBinding": {
                        "prefix": "filename=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/filename"
                },
                {
                    "type": "int",
                    "default": 1,
                    "inputBinding": {
                        "prefix": "gz=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/gz"
                },
                {
                    "type": "string",
                    "default": "bam",
                    "inputBinding": {
                        "prefix": "inputformat=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/inputformat"
                },
                {
                    "type": "int",
                    "default": 5,
                    "inputBinding": {
                        "prefix": "level=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/level"
                },
                {
                    "type": "string",
                    "default": ".",
                    "inputBinding": {
                        "prefix": "outputdir=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/outputdir"
                },
                {
                    "type": "int",
                    "default": 1,
                    "inputBinding": {
                        "prefix": "outputperreadgroup=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/outputperreadgroup"
                },
                {
                    "type": "string",
                    "default": "_1.fq.gz",
                    "inputBinding": {
                        "prefix": "outputperreadgroupsuffixF=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/outputperreadgroupsuffixF"
                },
                {
                    "type": "string",
                    "default": "_2.fq.gz",
                    "inputBinding": {
                        "prefix": "outputperreadgroupsuffixF2=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/outputperreadgroupsuffixF2"
                },
                {
                    "type": "string",
                    "default": "_o1.fq.gz",
                    "inputBinding": {
                        "prefix": "outputperreadgroupsuffixO=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/outputperreadgroupsuffixO"
                },
                {
                    "type": "string",
                    "default": "_o2.fq.gz",
                    "inputBinding": {
                        "prefix": "outputperreadgroupsuffixO2=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/outputperreadgroupsuffixO2"
                },
                {
                    "type": "string",
                    "default": "_s.fq.gz",
                    "inputBinding": {
                        "prefix": "outputperreadgroupsuffixS=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/outputperreadgroupsuffixS"
                },
                {
                    "type": "int",
                    "default": 1,
                    "inputBinding": {
                        "prefix": "tryoq=",
                        "separate": false
                    },
                    "id": "#biobambam2_bamtofastq.cwl/tryoq"
                }
            ],
            "outputs": [
                {
                    "format": "edam:format_2182",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "outputBinding": {
                        "glob": "*_1.fq.gz",
                        "outputEval": "${ return self.sort(function(a,b) { return a.location > b.location ? 1 : (a.location < b.location ? -1 : 0) }) }\n"
                    },
                    "id": "#biobambam2_bamtofastq.cwl/output_fastq1"
                },
                {
                    "format": "edam:format_2182",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "outputBinding": {
                        "glob": "*_2.fq.gz",
                        "outputEval": "${ return self.sort(function(a,b) { return a.location > b.location ? 1 : (a.location < b.location ? -1 : 0) }) }\n"
                    },
                    "id": "#biobambam2_bamtofastq.cwl/output_fastq2"
                },
                {
                    "format": "edam:format_2182",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "outputBinding": {
                        "glob": "*_o1.fq.gz",
                        "outputEval": "${ return self.sort(function(a,b) { return a.location > b.location ? 1 : (a.location < b.location ? -1 : 0) }) }\n"
                    },
                    "id": "#biobambam2_bamtofastq.cwl/output_fastq_o1"
                },
                {
                    "format": "edam:format_2182",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "outputBinding": {
                        "glob": "*_o2.fq.gz",
                        "outputEval": "${ return self.sort(function(a,b) { return a.location > b.location ? 1 : (a.location < b.location ? -1 : 0) }) }\n"
                    },
                    "id": "#biobambam2_bamtofastq.cwl/output_fastq_o2"
                },
                {
                    "format": "edam:format_2182",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "outputBinding": {
                        "glob": "*_s.fq.gz",
                        "outputEval": "${ return self.sort(function(a,b) { return a.location > b.location ? 1 : (a.location < b.location ? -1 : 0) }) }\n"
                    },
                    "id": "#biobambam2_bamtofastq.cwl/output_fastq_s"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/bamtofastq"
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
                    "coresMin": 8,
                    "coresMax": 8,
                    "ramMin": 30600,
                    "ramMax": 30600,
                    "tmpdirMin": "$(Math.ceil(2 * (inputs.fastq1.size + inputs.fastq2.size) / 1048576))",
                    "tmpdirMax": "$(Math.ceil(2 * (inputs.fastq1.size + inputs.fastq2.size) / 1048576))",
                    "outdirMin": "$(Math.ceil(2 * (inputs.fastq1.size + inputs.fastq2.size) / 1048576))",
                    "outdirMax": "$(Math.ceil(2 * (inputs.fastq1.size + inputs.fastq2.size) / 1048576))"
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "format": "edam:format_1929",
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
                    "format": "edam:format_2182",
                    "id": "#bwa_record_pe.cwl/fastq1"
                },
                {
                    "type": "File",
                    "format": "edam:format_2182",
                    "id": "#bwa_record_pe.cwl/fastq2"
                },
                {
                    "type": "File",
                    "format": "edam:format_3464",
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
                    "format": "edam:format_2572",
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
            "id": "#bwa_record_se.cwl",
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
                    "coresMin": 8,
                    "coresMax": 8,
                    "ramMin": 30600,
                    "ramMax": 30600,
                    "tmpdirMin": "$(Math.ceil(2 * (inputs.fastq.size) / 1048576))",
                    "tmpdirMax": "$(Math.ceil(2 * (inputs.fastq.size) / 1048576))",
                    "outdirMin": "$(Math.ceil(2 * (inputs.fastq.size) / 1048576))",
                    "outdirMax": "$(Math.ceil(2 * (inputs.fastq.size) / 1048576))"
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "format": "edam:format_1929",
                    "secondaryFiles": [
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".pac",
                        ".sa"
                    ],
                    "id": "#bwa_record_se.cwl/fasta"
                },
                {
                    "type": "File",
                    "format": "edam:format_2182",
                    "id": "#bwa_record_se.cwl/fastq"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "loadContents": true,
                        "valueFrom": "$(null)"
                    },
                    "id": "#bwa_record_se.cwl/fastqc_json_path"
                },
                {
                    "type": "#readgroup.yml/readgroup_meta",
                    "id": "#bwa_record_se.cwl/readgroup_meta"
                },
                {
                    "type": "int",
                    "default": 3,
                    "id": "#bwa_record_se.cwl/samse_maxOcc"
                },
                {
                    "type": "int",
                    "id": "#bwa_record_se.cwl/thread_count"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "format": "edam:format_2572",
                    "outputBinding": {
                        "glob": "$(inputs.readgroup_meta['ID'] + \".bam\")"
                    },
                    "id": "#bwa_record_se.cwl/OUTPUT"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "${\n  function to_rg() {\n    var readgroup_str = \"@RG\";\n    var keys = Object.keys(inputs.readgroup_meta).sort();\n    for (var i = 0; i < keys.length; i++) {\n      var key = keys[i];\n      var value = inputs.readgroup_meta[key];\n      if (key.length == 2 && value != null) {\n        readgroup_str = readgroup_str + \"\\\\t\" + key + \":\" + value;\n      }\n    }\n    return readgroup_str\n  }\n\n  function bwa_aln_33(rg_str, outbam) {\n    var cmd = [\n    \"bwa\", \"aln\", \"-t\", inputs.thread_count, inputs.fasta.path, inputs.fastq.path, \">\", \"aln.sai\", \"&&\",\n    \"bwa\", \"samse\", \"-n\", inputs.samse_maxOcc, \"-r\", \"\\\"\" + rg_str + \"\\\"\", inputs.fasta.path, \"aln.sai\", inputs.fastq.path, \"|\",\n    \"samtools\", \"view\", \"-Shb\", \"-o\", outbam, \"-\"\n    ];\n    return cmd.join(' ')\n  }\n\n  function bwa_aln_64(rg_str, outbam) {\n    var cmd = [\n    \"bwa\", \"aln\", \"-I\",\"-t\", inputs.thread_count, inputs.fasta.path, inputs.fastq.path, \">\", \"aln.sai\", \"&&\",\n    \"bwa\", \"samse\", \"-n\", inputs.samse_maxOcc, \"-r\", \"\\\"\" + rg_str + \"\\\"\", inputs.fasta.path, \"aln.sai\", inputs.fastq.path, \"|\",\n    \"samtools\", \"view\", \"-Shb\", \"-o\", outbam, \"-\"\n    ];\n    return cmd.join(' ')\n  }\n\n  function bwa_mem(rg_str, outbam) {\n    var cmd = [\n    \"bwa\", \"mem\", \"-t\", inputs.thread_count, \"-T\", \"0\", \"-R\", \"\\\"\" + rg_str + \"\\\"\",\n    inputs.fasta.path, inputs.fastq.path, \"|\",\n    \"samtools\", \"view\", \"-Shb\", \"-o\", outbam, \"-\"\n    ];\n    return cmd.join(' ')\n  }\n\n  var MEM_ALN_CUTOFF = 70;\n  var fastqc_json = JSON.parse(inputs.fastqc_json_path.contents);\n  var readlength = fastqc_json[inputs.fastq.basename][\"Sequence length\"];\n  var encoding = fastqc_json[inputs.fastq.basename][\"Encoding\"];\n  var rg_str = to_rg();\n\n  var outbam = inputs.readgroup_meta['ID'] + \".bam\";\n\n  if (encoding == \"Illumina 1.3\" || encoding == \"Illumina 1.5\") {\n    return bwa_aln_64(rg_str, outbam)\n  } else if (encoding == \"Sanger / Illumina 1.9\") {\n    if (readlength < MEM_ALN_CUTOFF) {\n      return bwa_aln_33(rg_str, outbam)\n    }\n    else {\n      return bwa_mem(rg_str, outbam)\n    }\n  } else {\n    return\n  }\n\n}\n"
                }
            ],
            "baseCommand": [
                "bash",
                "-c"
            ]
        },
        {
            "class": "ExpressionTool",
            "id": "#decider_markdup_input.cwl",
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800
                }
            ],
            "inputs": [
                {
                    "format": "edam:format_2572",
                    "type": {
                        "type": "array",
                        "items": {
                            "type": "array",
                            "items": "File"
                        }
                    },
                    "id": "#decider_markdup_input.cwl/bam"
                },
                {
                    "type": "boolean",
                    "id": "#decider_markdup_input.cwl/run_markdups"
                }
            ],
            "outputs": [
                {
                    "type": {
                        "type": "array",
                        "items": "int"
                    },
                    "id": "#decider_markdup_input.cwl/do_markdup_workflow"
                },
                {
                    "format": "edam:format_2572",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "id": "#decider_markdup_input.cwl/out_bam"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "int"
                    },
                    "id": "#decider_markdup_input.cwl/skip_markdup_workflow"
                }
            ],
            "expression": "${\n   var bams = [];\n   for(var i = 0; i < inputs.bam.length; i++) {\n     for(var j = 0; j < inputs.bam[i].length; j++) {\n       if(inputs.bam[i][j].size > 0) {\n         bams.push(inputs.bam[i][j])\n       }\n     }\n   }\n\n   if( inputs.run_markdups ) {\n     return({\n       'do_markdup_workflow': [1],\n       'skip_markdup_workflow': [],\n       'out_bam': bams\n     });\n   } else {\n     return({\n       'do_markdup_workflow': [],\n       'skip_markdup_workflow': [1],\n       'out_bam': bams\n     });\n   }\n }\n"
        },
        {
            "class": "ExpressionTool",
            "id": "#decider_markdup_output.cwl",
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800
                }
            ],
            "inputs": [
                {
                    "format": "edam:format_2572",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "id": "#decider_markdup_output.cwl/markdup_bam"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "id": "#decider_markdup_output.cwl/markdup_sqlite"
                },
                {
                    "format": "edam:format_2572",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "id": "#decider_markdup_output.cwl/skip_markdup_bam"
                }
            ],
            "outputs": [
                {
                    "format": "edam:format_2572",
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "id": "#decider_markdup_output.cwl/bam"
                },
                {
                    "type": [
                        "null",
                        "File"
                    ],
                    "id": "#decider_markdup_output.cwl/sqlite"
                }
            ],
            "expression": "${\n   if(inputs.markdup_bam.length == 1) {\n     return({'bam': inputs.markdup_bam[0],\n             'sqlite': inputs.markdup_sqlite[0]});\n   } else if(inputs.skip_markdup_bam.length == 1) {\n     return({'bam': inputs.skip_markdup_bam[0],\n             'sqlite': null})\n   } else {\n     throw \"Either markdup bam or skip markdup bam arrays have to be length 1\"\n   }\n }\n"
        },
        {
            "class": "ExpressionTool",
            "id": "#emit_matched_fastq_readgroups.cwl",
            "requirements": [
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
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800
                }
            ],
            "inputs": [
                {
                    "type": {
                        "type": "array",
                        "items": "string"
                    },
                    "id": "#emit_matched_fastq_readgroups.cwl/bam_readgroup_contents"
                },
                {
                    "format": "edam:format_2182",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "id": "#emit_matched_fastq_readgroups.cwl/forward_fastq_list"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_meta"
                    },
                    "id": "#emit_matched_fastq_readgroups.cwl/readgroup_meta_list"
                },
                {
                    "format": "edam:format_2182",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "id": "#emit_matched_fastq_readgroups.cwl/reverse_fastq_list"
                }
            ],
            "outputs": [
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_fastq_file"
                    },
                    "id": "#emit_matched_fastq_readgroups.cwl/output"
                }
            ],
            "expression": "${\n    // /begin chakrit / CC-BY-SA-4.0\n    // https://stackoverflow.com/a/2548133/810957\n    function endsWith(str, suffix) {\n      return str.indexOf(suffix, str.length - suffix.length) !== -1;\n    }\n    // /end chakrit / CC-BY-SA-4.0\n\n    // /begin 3DFace / CC-BY-SA-4.0\n    // https://stackoverflow.com/questions/3820381/need-a-basename-function-in-javascript#comment29942319_15270931\n    function local_basename(path) {\n      var basename = path.split(/[\\\\/]/).pop();\n      return basename\n    }\n    // /end 3DFace / CC-BY-SA-4.0\n\n    function get_slice_number(fastq_name) {\n      if (endsWith(fastq_name, '_1.fq.gz')) {\n        return -8\n      }\n      else if (endsWith(fastq_name, '_s.fq.gz')) {\n        return -8\n      }\n      else if (endsWith(fastq_name, '_o1.fq.gz')) {\n        return -9\n      }\n      else if (endsWith(fastq_name, '_o2.fq.gz')) {\n        return -9\n      }\n      else {\n        throw \"not recognized fastq suffix\"\n      }\n    }\n\n    // get readgroup name from fastq\n    function fastq_to_rg_id(fq_file_object) {\n      var fastq_name = local_basename(fq_file_object.location);\n      var slice_number = get_slice_number(fastq_name);\n      var readgroup_name = fastq_name.slice(0,slice_number);\n      return readgroup_name;\n    }\n\n    function load_bamrgs() {\n      var res = [];\n      for (var i = 0; i < inputs.bam_readgroup_contents.length; i++) {\n        var curr = JSON.parse(inputs.bam_readgroup_contents[i]);\n        res.push(curr);\n      }\n      return(res);\n    }\n\n    function find_graph_rg(bam_rgid) {\n      for (var i = 0; i < inputs.readgroup_meta_list.length; i++) {\n        var record = inputs.readgroup_meta_list[i];\n        if (record[\"ID\"] === bam_rgid) {\n          return(record);\n        }\n      }\n      return(null);\n    }\n\n    function find_bam_rg(bam_meta, rgid) {\n      for (var i = 0; i < bam_meta.length; i++) {\n        var record = bam_meta[i];\n        if (record[\"ID\"] === rgid) {\n          return(record);\n        }\n      }\n      return(null);\n    }\n\n    function make_record(readgroup_meta, forward_fastq, reverse_fastq) {\n      var output = {\"forward_fastq\": forward_fastq,\n                    \"reverse_fastq\": reverse_fastq,\n                    \"readgroup_meta\": readgroup_meta};\n      output.forward_fastq.format = \"edam:format_2182\";\n      if(reverse_fastq !== null) {\n        output.reverse_fastq.format = \"edam:format_2182\";\n      }\n      return(output);\n    }\n\n    function normalize_record(record) {\n      // first meta_rg has right sample\n      var first_rg = inputs.readgroup_meta_list[0];\n      var first_sm = first_rg['SM'];\n      var first_pl = first_rg['PL'].toUpperCase();\n\n      if(!record.readgroup_meta.hasOwnProperty('SM') || record.readgroup_meta['SM'] !== first_sm) {\n        record.readgroup_meta['SM'] = first_sm;\n      }\n\n      if(!record.readgroup_meta.hasOwnProperty('LB') || record.readgroup_meta['LB'] === null) {\n        record.readgroup_meta['LB'] = first_sm;\n      }\n\n      if(!record.readgroup_meta.hasOwnProperty('PL') || record.readgroup_meta['PL'] === null) {\n        record.readgroup_meta['PL'] = first_pl;\n      } else {\n        record.readgroup_meta['PL'] = record.readgroup_meta['PL'].toUpperCase();\n      }\n    }\n\n    // output\n    var output_array = [];\n\n    // bam rgs\n    var bam_meta = load_bamrgs();\n\n    // get readgroup names from fastq, lookup in graph, lookup in bam meta\n    // if needed.\n    for (var i = 0; i < inputs.forward_fastq_list.length; i++) {\n      var fq = inputs.forward_fastq_list[i];\n      var rev_fq = inputs.reverse_fastq_list.length > 0 ? inputs.reverse_fastq_list[i] : null;\n      var readgroup_name = fastq_to_rg_id(fq);\n\n      // try to look up in the graph metadata using rgname as both rgid and rgpu\n      var graph_rg = find_graph_rg(readgroup_name);\n      if (graph_rg !== null) {\n        var rec = make_record(graph_rg, fq, rev_fq);\n        normalize_record(rec);\n        output_array.push(rec);\n      }\n      else {\n        // Match with bam meta, try to lookup from PU if possible\n        var bam_rg = find_bam_rg(bam_meta, readgroup_name);\n        if(bam_rg === null) {\n          throw \"Unable to find the matching bam RG record\";\n        }\n        var rec = make_record(bam_rg, fq, rev_fq);\n        normalize_record(rec);\n        output_array.push(rec);\n      }\n    }\n    return {'output': output_array};\n  }\n"
        },
        {
            "class": "ExpressionTool",
            "id": "#emit_readgroup_fastq_file.cwl",
            "requirements": [
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
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "id": "#emit_readgroup_fastq_file.cwl/forward_fastq"
                },
                {
                    "type": "#readgroup.yml/readgroup_meta",
                    "id": "#emit_readgroup_fastq_file.cwl/readgroup_meta"
                },
                {
                    "type": [
                        "null",
                        "File"
                    ],
                    "id": "#emit_readgroup_fastq_file.cwl/reverse_fastq"
                }
            ],
            "outputs": [
                {
                    "type": "#readgroup.yml/readgroup_fastq_file",
                    "id": "#emit_readgroup_fastq_file.cwl/output"
                }
            ],
            "expression": "${\n  if( inputs.reverse_fastq ) {\n      var output = { \"forward_fastq\": inputs.forward_fastq,\n                     \"reverse_fastq\": inputs.reverse_fastq,\n                     \"readgroup_meta\": inputs.readgroup_meta\n                     };\n      output.forward_fastq.format = \"edam:format_2182\";\n      output.reverse_fastq.format = \"edam:format_2182\";\n  }\n  else {\n      var output = { \"forward_fastq\": inputs.forward_fastq,\n                     \"readgroup_meta\": inputs.readgroup_meta\n                     };\n      output.forward_fastq.format = \"edam:format_2182\";\n  }\n  return {'output': output}\n}\n"
        },
        {
            "class": "CommandLineTool",
            "id": "#fastq_cleaner.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/fastq_cleaner:69c602582f0f001269b4f85a610ae4d5af1edd1809c0edda6a3ae13053e62ce3"
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
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": "$(Math.ceil(1.1 * fastq_files_size(inputs.fastq1, inputs.fastq2)))",
                    "tmpdirMax": "$(Math.ceil(1.1 * fastq_files_size(inputs.fastq1, inputs.fastq2)))",
                    "outdirMin": "$(Math.ceil(1.1 * fastq_files_size(inputs.fastq1, inputs.fastq2)))",
                    "outdirMax": "$(Math.ceil(1.1 * fastq_files_size(inputs.fastq1, inputs.fastq2)))"
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "format": "edam:format_2182",
                    "inputBinding": {
                        "prefix": "--fastq"
                    },
                    "id": "#fastq_cleaner.cwl/fastq1"
                },
                {
                    "type": [
                        "null",
                        "File"
                    ],
                    "format": "edam:format_2182",
                    "inputBinding": {
                        "prefix": "--fastq2"
                    },
                    "id": "#fastq_cleaner.cwl/fastq2"
                },
                {
                    "type": "int",
                    "default": 500000,
                    "inputBinding": {
                        "prefix": "--reads_in_memory"
                    },
                    "id": "#fastq_cleaner.cwl/reads_in_memory"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "format": "edam:format_2182",
                    "outputBinding": {
                        "glob": "$(inputs.fastq1.basename)"
                    },
                    "id": "#fastq_cleaner.cwl/cleaned_fastq1"
                },
                {
                    "type": [
                        "null",
                        "File"
                    ],
                    "format": "edam:format_2182",
                    "outputBinding": {
                        "glob": "${\n   var res = inputs.fastq2 === null ? null : inputs.fastq2.basename;\n   return res;\n }\n"
                    },
                    "id": "#fastq_cleaner.cwl/cleaned_fastq2"
                },
                {
                    "type": "File",
                    "format": "edam:format_3464",
                    "outputBinding": {
                        "glob": "result.json"
                    },
                    "id": "#fastq_cleaner.cwl/result_json"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/fastq_cleaner"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#fastqc.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/fastqc:27ec215ea82bd62a76ec86f9c8a692010cc0c99169e68d2fa0c0052450321f57"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 4,
                    "ramMin": 7600,
                    "ramMax": 7600,
                    "tmpdirMin": 50,
                    "tmpdirMax": 50,
                    "outdirMin": 5,
                    "outdirMax": 5
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "format": "edam:format_2182",
                    "inputBinding": {
                        "position": 99
                    },
                    "id": "#fastqc.cwl/INPUT"
                },
                {
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "prefix": "--adapters"
                    },
                    "id": "#fastqc.cwl/adapters"
                },
                {
                    "type": "boolean",
                    "default": false,
                    "inputBinding": {
                        "prefix": "--casava"
                    },
                    "id": "#fastqc.cwl/casava"
                },
                {
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "prefix": "--contaminants"
                    },
                    "id": "#fastqc.cwl/contaminants"
                },
                {
                    "type": "string",
                    "default": ".",
                    "inputBinding": {
                        "prefix": "--dir"
                    },
                    "id": "#fastqc.cwl/dir"
                },
                {
                    "type": "boolean",
                    "default": false,
                    "inputBinding": {
                        "prefix": "--extract"
                    },
                    "id": "#fastqc.cwl/extract"
                },
                {
                    "type": "string",
                    "default": "fastq",
                    "inputBinding": {
                        "prefix": "--format"
                    },
                    "id": "#fastqc.cwl/format"
                },
                {
                    "type": "int",
                    "default": 7,
                    "inputBinding": {
                        "prefix": "--kmers"
                    },
                    "id": "#fastqc.cwl/kmers"
                },
                {
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "prefix": "--limits"
                    },
                    "id": "#fastqc.cwl/limits"
                },
                {
                    "type": "boolean",
                    "default": false,
                    "inputBinding": {
                        "prefix": "--nano"
                    },
                    "id": "#fastqc.cwl/nano"
                },
                {
                    "type": "boolean",
                    "default": true,
                    "inputBinding": {
                        "prefix": "--noextract"
                    },
                    "id": "#fastqc.cwl/noextract"
                },
                {
                    "type": "boolean",
                    "default": false,
                    "inputBinding": {
                        "prefix": "--nofilter"
                    },
                    "id": "#fastqc.cwl/nofilter"
                },
                {
                    "type": "boolean",
                    "default": false,
                    "inputBinding": {
                        "prefix": "--nogroup"
                    },
                    "id": "#fastqc.cwl/nogroup"
                },
                {
                    "type": "string",
                    "default": ".",
                    "inputBinding": {
                        "prefix": "--outdir"
                    },
                    "id": "#fastqc.cwl/outdir"
                },
                {
                    "type": "boolean",
                    "default": false,
                    "inputBinding": {
                        "prefix": "--quiet"
                    },
                    "id": "#fastqc.cwl/quiet"
                },
                {
                    "type": "int",
                    "default": 1,
                    "inputBinding": {
                        "prefix": "--threads"
                    },
                    "id": "#fastqc.cwl/threads"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "*_fastqc.zip"
                    },
                    "id": "#fastqc.cwl/OUTPUT"
                }
            ],
            "baseCommand": [
                "/usr/local/FastQC/fastqc"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#fastqc_basicstatistics_json.cwl",
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/fastqc_to_json:0ebd446f08d9eb6ed5b069e9ae53ad822236dc56bb1154f9df0e0c22b5724ae7"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 1,
                    "tmpdirMax": 1,
                    "outdirMin": 1,
                    "outdirMax": 1
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--sqlite_path"
                    },
                    "id": "#fastqc_basicstatistics_json.cwl/sqlite_path"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "format": "edam:format_3464",
                    "outputBinding": {
                        "glob": "fastqc.json"
                    },
                    "id": "#fastqc_basicstatistics_json.cwl/OUTPUT"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/fastqc_to_json"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#fastqc_db.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/fastqc_db:3383ae9c9beaf905682b21cab14d20b3bc4fc738c7e1e126da99dc288ba016ac"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 100,
                    "tmpdirMax": 100,
                    "outdirMin": 10,
                    "outdirMax": 10
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--INPUT"
                    },
                    "id": "#fastqc_db.cwl/INPUT"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#fastqc_db.cwl/job_uuid"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".log\")"
                    },
                    "id": "#fastqc_db.cwl/LOG"
                },
                {
                    "type": "File",
                    "format": "edam:format_3621",
                    "outputBinding": {
                        "glob": "$(inputs.INPUT.nameroot + \".db\")"
                    },
                    "id": "#fastqc_db.cwl/OUTPUT"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/fastqc_db"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk4_applybqsr.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/gatk:4.1.8.aws_fix"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 8,
                    "ramMin": 15300,
                    "ramMax": 15300
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--bqsr-recal-file"
                    },
                    "id": "#gatk4_applybqsr.cwl/bqsr-recal-file"
                },
                {
                    "type": [
                        {
                            "type": "enum",
                            "symbols": [
                                "#gatk4_applybqsr.cwl/emit-original-quals/true",
                                "#gatk4_applybqsr.cwl/emit-original-quals/false"
                            ]
                        }
                    ],
                    "default": "true",
                    "inputBinding": {
                        "prefix": "--emit-original-quals"
                    },
                    "id": "#gatk4_applybqsr.cwl/emit-original-quals"
                },
                {
                    "format": "edam:format_2572",
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--input"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "id": "#gatk4_applybqsr.cwl/input"
                },
                {
                    "type": "string",
                    "default": ".",
                    "inputBinding": {
                        "prefix": "--tmp-dir"
                    },
                    "id": "#gatk4_applybqsr.cwl/tmp_dir"
                }
            ],
            "outputs": [
                {
                    "format": "edam:format_2572",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.input.basename)"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "id": "#gatk4_applybqsr.cwl/output_bam"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "$(inputs.input.basename)",
                    "prefix": "--output"
                }
            ],
            "baseCommand": [
                "java",
                "-jar",
                "/opt/gatk-package-4.1.8.1-8-gfcb7889-SNAPSHOT-local.jar",
                "ApplyBQSR"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk4_baserecalibrator.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/gatk:4.1.8.aws_fix"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 8,
                    "ramMin": 15300,
                    "ramMax": 15300
                }
            ],
            "inputs": [
                {
                    "format": "edam:format_2572",
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--input"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "id": "#gatk4_baserecalibrator.cwl/input"
                },
                {
                    "format": "edam:format_3016",
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--known-sites"
                    },
                    "secondaryFiles": [
                        ".tbi"
                    ],
                    "id": "#gatk4_baserecalibrator.cwl/known-sites"
                },
                {
                    "format": "edam:format_1929",
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--reference"
                    },
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ],
                    "id": "#gatk4_baserecalibrator.cwl/reference"
                },
                {
                    "type": "string",
                    "default": ".",
                    "inputBinding": {
                        "prefix": "--tmp-dir"
                    },
                    "id": "#gatk4_baserecalibrator.cwl/tmp_dir"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.input.nameroot + \"_bqsr.grp\")"
                    },
                    "id": "#gatk4_baserecalibrator.cwl/output_grp"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "$(inputs.input.nameroot + \"_bqsr.grp\")",
                    "prefix": "--output",
                    "separate": true
                }
            ],
            "baseCommand": [
                "java",
                "-jar",
                "/opt/gatk-package-4.1.8.1-8-gfcb7889-SNAPSHOT-local.jar",
                "BaseRecalibrator"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk4_calculatecontamination.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/gatk:4.1.8.aws_fix"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 4,
                    "ramMin": 7600,
                    "ramMax": 7600
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "id": "#gatk4_calculatecontamination.cwl/bam_nameroot"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--input"
                    },
                    "id": "#gatk4_calculatecontamination.cwl/input"
                },
                {
                    "type": "string",
                    "default": ".",
                    "inputBinding": {
                        "prefix": "--tmp-dir"
                    },
                    "id": "#gatk4_calculatecontamination.cwl/tmp_dir"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.bam_nameroot + \"_contamination.table\")"
                    },
                    "id": "#gatk4_calculatecontamination.cwl/output"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "$(inputs.bam_nameroot + \"_contamination.table\")",
                    "prefix": "--output",
                    "separate": true
                }
            ],
            "baseCommand": [
                "java",
                "-jar",
                "/opt/gatk-package-4.1.8.1-8-gfcb7889-SNAPSHOT-local.jar",
                "CalculateContamination"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk4_getpileupsummaries.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/gatk:4.1.8.aws_fix"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 4,
                    "ramMin": 7600,
                    "ramMax": 7600
                }
            ],
            "inputs": [
                {
                    "format": "edam:format_2572",
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--input"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "id": "#gatk4_getpileupsummaries.cwl/input"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "-R"
                    },
                    "id": "#gatk4_getpileupsummaries.cwl/reference"
                },
                {
                    "type": "string",
                    "default": ".",
                    "inputBinding": {
                        "prefix": "--tmp-dir"
                    },
                    "id": "#gatk4_getpileupsummaries.cwl/tmp_dir"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--variant"
                    },
                    "id": "#gatk4_getpileupsummaries.cwl/variant"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.input.nameroot + \"_pileupsummaries.table\")"
                    },
                    "id": "#gatk4_getpileupsummaries.cwl/output"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "$(inputs.input.nameroot + \"_pileupsummaries.table\")",
                    "prefix": "--output",
                    "separate": true
                },
                {
                    "valueFrom": "$(inputs.variant.path)",
                    "prefix": "--intervals",
                    "separate": true
                }
            ],
            "baseCommand": [
                "java",
                "-jar",
                "/opt/gatk-package-4.1.8.1-8-gfcb7889-SNAPSHOT-local.jar",
                "GetPileupSummaries"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_calculatecontamination_to_sqlite.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard_metrics_sqlite:cromwell"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 10,
                    "tmpdirMax": 10,
                    "outdirMin": 10,
                    "outdirMax": 10
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--bam"
                    },
                    "id": "#gatk_calculatecontamination_to_sqlite.cwl/bam"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--input_state"
                    },
                    "id": "#gatk_calculatecontamination_to_sqlite.cwl/input_state"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#gatk_calculatecontamination_to_sqlite.cwl/job_uuid"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--metric_path"
                    },
                    "id": "#gatk_calculatecontamination_to_sqlite.cwl/metric_path"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid+\"_picard_gatk_CalculateContamination.log\")"
                    },
                    "id": "#gatk_calculatecontamination_to_sqlite.cwl/log"
                },
                {
                    "format": "edam:format_3621",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".db\")"
                    },
                    "id": "#gatk_calculatecontamination_to_sqlite.cwl/sqlite"
                }
            ],
            "baseCommand": [
                "python3",
                "/opt/picard_metrics_sqlite/main.py",
                "--metric_name",
                "gatk_CalculateContamination"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#json_to_sqlite.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/json-to-sqlite:439b1b7f41fedc927859177a8073ac8b9ab8179b9c474fc274ac415d95b6eb7c"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 10,
                    "tmpdirMax": 10,
                    "outdirMin": 10,
                    "outdirMax": 10
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--input_json"
                    },
                    "id": "#json_to_sqlite.cwl/input_json"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#json_to_sqlite.cwl/job_uuid"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--table_name"
                    },
                    "id": "#json_to_sqlite.cwl/table_name"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid).log"
                    },
                    "id": "#json_to_sqlite.cwl/log"
                },
                {
                    "format": "edam:format_3621",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid).db"
                    },
                    "id": "#json_to_sqlite.cwl/sqlite"
                }
            ],
            "baseCommand": [
                "json_to_sqlite"
            ]
        },
        {
            "class": "ExpressionTool",
            "id": "#merge_fastq_records.cwl",
            "requirements": [
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
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800
                }
            ],
            "inputs": [
                {
                    "type": {
                        "type": "array",
                        "items": {
                            "type": "array",
                            "items": "#readgroup.yml/readgroup_fastq_file"
                        }
                    },
                    "id": "#merge_fastq_records.cwl/input"
                }
            ],
            "outputs": [
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_fastq_file"
                    },
                    "id": "#merge_fastq_records.cwl/output"
                }
            ],
            "expression": "${\n  var output = [];\n  for (var i = 0; i < inputs.input.length; i++) {\n    var readgroup_array = inputs.input[i];\n    for (var j = 0; j < readgroup_array.length; j++) {\n      var readgroup = readgroup_array[j];\n      output.push(readgroup);\n    }\n  }\n\n  return {'output': output}\n}\n"
        },
        {
            "class": "CommandLineTool",
            "id": "#merge_sqlite.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/merge_sqlite:1b3a6f55be8579ecfb4c9c0513c3b710717a8f4cd8e79c88ee8c0f28f604faa3"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": "${\nvar req_space = 0;\nfor (var i = 0; i < inputs.source_sqlite.length; i++) {\n    req_space += inputs.source_sqlite[i].size;\n  }\nreturn Math.ceil(2 * (req_space / 1048576));\n}\n",
                    "outdirMin": "${\nvar req_space = 0;\nfor (var i = 0; i < inputs.source_sqlite.length; i++) {\n    req_space += inputs.source_sqlite[i].size;\n  }\nreturn Math.ceil(req_space / 1048576);\n}\n"
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#merge_sqlite.cwl/job_uuid"
                },
                {
                    "format": "edam:format_3621",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--source_sqlite"
                        }
                    },
                    "id": "#merge_sqlite.cwl/source_sqlite"
                }
            ],
            "outputs": [
                {
                    "format": "edam:format_3621",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".db\")"
                    },
                    "id": "#merge_sqlite.cwl/destination_sqlite"
                },
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".log\")"
                    },
                    "id": "#merge_sqlite.cwl/log"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/merge_sqlite"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_collecthsmetrics.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard:092d034713aff237cf07ef28c22a46a113d1a59dc7ec6d71beb72295044a46f8"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 16,
                    "ramMin": 30600,
                    "ramMax": 30600,
                    "tmpdirMin": 1000,
                    "tmpdirMax": 1000,
                    "outdirMin": 1000,
                    "outdirMax": 1000
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "BAIT_INTERVALS=",
                        "position": 10,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/BAIT_INTERVALS"
                },
                {
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "prefix": "BAIT_SET_NAME=",
                        "position": 11,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/BAIT_SET_NAME"
                },
                {
                    "type": "string",
                    "default": "true",
                    "inputBinding": {
                        "prefix": "CLIP_OVERLAPPING_READS=",
                        "position": 12,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/CLIP_OVERLAPPING_READS"
                },
                {
                    "type": "int",
                    "default": 200,
                    "inputBinding": {
                        "prefix": "COVERAGE_CAP=",
                        "position": 13,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/COVERAGE_CAP"
                },
                {
                    "type": "File",
                    "format": "edam:format_2572",
                    "inputBinding": {
                        "prefix": "INPUT=",
                        "position": 14,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/INPUT"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "string",
                        "inputBinding": {
                            "prefix": "METRIC_ACCUMULATION_LEVEL=",
                            "position": 15,
                            "separate": false
                        }
                    },
                    "default": [
                        "ALL_READS",
                        "LIBRARY",
                        "SAMPLE",
                        "READ_GROUP"
                    ],
                    "id": "#picard_collecthsmetrics.cwl/METRIC_ACCUMULATION_LEVEL"
                },
                {
                    "type": "int",
                    "default": 20,
                    "inputBinding": {
                        "prefix": "MINIMUM_BASE_QUALITY=",
                        "position": 16,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/MINIMUM_BASE_QUALITY"
                },
                {
                    "type": "int",
                    "default": 20,
                    "inputBinding": {
                        "prefix": "MINIMUM_MAPPING_QUALITY=",
                        "position": 17,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/MINIMUM_MAPPING_QUALITY"
                },
                {
                    "type": "int",
                    "default": 250,
                    "inputBinding": {
                        "prefix": "NEAR_DISTANCE=",
                        "position": 18,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/NEAR_DISTANCE"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "OUTPUT=",
                        "position": 19,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/OUTPUT"
                },
                {
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "prefix": "PER_BASE_COVERAGE=",
                        "position": 20,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/PER_BASE_COVERAGE"
                },
                {
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "prefix": "PER_TARGET_COVERAGE=",
                        "position": 21,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/PER_TARGET_COVERAGE"
                },
                {
                    "type": "File",
                    "format": "edam:format_1929",
                    "inputBinding": {
                        "prefix": "REFERENCE_SEQUENCE=",
                        "position": 22,
                        "separate": false
                    },
                    "secondaryFiles": [
                        ".fai"
                    ],
                    "id": "#picard_collecthsmetrics.cwl/REFERENCE_SEQUENCE"
                },
                {
                    "type": "int",
                    "default": 10000,
                    "inputBinding": {
                        "prefix": "SAMPLE_SIZE=",
                        "position": 23,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/SAMPLE_SIZE"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "TARGET_INTERVALS=",
                        "position": 24,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/TARGET_INTERVALS"
                },
                {
                    "default": "STRICT",
                    "type": "string",
                    "inputBinding": {
                        "prefix": "VALIDATION_STRINGENCY=",
                        "position": 25,
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/VALIDATION_STRINGENCY"
                },
                {
                    "default": "48G",
                    "type": "string",
                    "inputBinding": {
                        "position": -10,
                        "prefix": "-Xmx",
                        "separate": false
                    },
                    "id": "#picard_collecthsmetrics.cwl/java_xmx"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.OUTPUT)"
                    },
                    "id": "#picard_collecthsmetrics.cwl/METRIC_OUTPUT"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "-jar",
                    "position": -9
                },
                {
                    "valueFrom": "/usr/local/bin/picard.jar",
                    "position": -8
                },
                {
                    "valueFrom": "CollectHsMetrics",
                    "position": -7
                }
            ],
            "baseCommand": [
                "java"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_collecthsmetrics_to_sqlite.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard_metrics_sqlite:e71798322233d02d67db0158aeeef27990d2d400aadfc92c3687ba85555b0cf8"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 10,
                    "tmpdirMax": 10,
                    "outdirMin": 10,
                    "outdirMax": 10
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--bam"
                    },
                    "id": "#picard_collecthsmetrics_to_sqlite.cwl/bam"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--input_state"
                    },
                    "id": "#picard_collecthsmetrics_to_sqlite.cwl/input_state"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#picard_collecthsmetrics_to_sqlite.cwl/job_uuid"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--metric_path"
                    },
                    "id": "#picard_collecthsmetrics_to_sqlite.cwl/metric_path"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid+\"_picard_CollectHsMetrics.log\")"
                    },
                    "id": "#picard_collecthsmetrics_to_sqlite.cwl/log"
                },
                {
                    "format": "edam:format_3621",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".db\")"
                    },
                    "id": "#picard_collecthsmetrics_to_sqlite.cwl/sqlite"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/picard_metrics_sqlite",
                "--metric_name",
                "CollectHsMetrics"
            ]
        },
        {
            "id": "#picard_collectoxogmetrics.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard:2.23.aws_fix"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 8,
                    "ramMin": 15300,
                    "ramMax": 15300,
                    "tmpdirMin": 5,
                    "tmpdirMax": 5,
                    "outdirMin": 5,
                    "outdirMax": 5
                }
            ],
            "class": "CommandLineTool",
            "inputs": [
                {
                    "type": {
                        "type": "array",
                        "items": "string",
                        "inputBinding": {
                            "prefix": "CONTEXTS=",
                            "separate": false
                        }
                    },
                    "id": "#picard_collectoxogmetrics.cwl/CONTEXTS"
                },
                {
                    "type": "File",
                    "format": "edam:format_3016",
                    "inputBinding": {
                        "prefix": "DB_SNP=",
                        "separate": false
                    },
                    "id": "#picard_collectoxogmetrics.cwl/DB_SNP"
                },
                {
                    "type": "File",
                    "format": "edam:format_2572",
                    "inputBinding": {
                        "prefix": "INPUT=",
                        "separate": false
                    },
                    "id": "#picard_collectoxogmetrics.cwl/INPUT"
                },
                {
                    "type": "File",
                    "format": "edam:format_1929",
                    "inputBinding": {
                        "prefix": "REFERENCE_SEQUENCE=",
                        "separate": false
                    },
                    "id": "#picard_collectoxogmetrics.cwl/REFERENCE_SEQUENCE"
                },
                {
                    "type": "string",
                    "default": ".",
                    "inputBinding": {
                        "prefix": "TMP_DIR=",
                        "separate": false
                    },
                    "id": "#picard_collectoxogmetrics.cwl/TMP_DIR"
                },
                {
                    "type": "string",
                    "default": "true",
                    "inputBinding": {
                        "prefix": "USE_OQ=",
                        "separate": false
                    },
                    "id": "#picard_collectoxogmetrics.cwl/USE_OQ"
                },
                {
                    "default": "STRICT",
                    "type": "string",
                    "inputBinding": {
                        "prefix": "VALIDATION_STRINGENCY=",
                        "separate": false
                    },
                    "id": "#picard_collectoxogmetrics.cwl/VALIDATION_STRINGENCY"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.INPUT.basename + \".oxometrics\")"
                    },
                    "id": "#picard_collectoxogmetrics.cwl/OUTPUT"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "$(inputs.INPUT.basename + \".oxometrics\")",
                    "prefix": "OUTPUT=",
                    "separate": false
                }
            ],
            "baseCommand": [
                "java",
                "-jar",
                "/opt/picard-2.23.3-6-g4463289-SNAPSHOT-all.jar",
                "CollectOxoGMetrics"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_collectoxogmetrics_to_sqlite.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard_metrics_sqlite:e71798322233d02d67db0158aeeef27990d2d400aadfc92c3687ba85555b0cf8"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 5,
                    "tmpdirMax": 5,
                    "outdirMin": 5,
                    "outdirMax": 5
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--bam"
                    },
                    "id": "#picard_collectoxogmetrics_to_sqlite.cwl/bam"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--fasta"
                    },
                    "id": "#picard_collectoxogmetrics_to_sqlite.cwl/fasta"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--input_state"
                    },
                    "id": "#picard_collectoxogmetrics_to_sqlite.cwl/input_state"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#picard_collectoxogmetrics_to_sqlite.cwl/job_uuid"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--metric_path"
                    },
                    "id": "#picard_collectoxogmetrics_to_sqlite.cwl/metric_path"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--vcf"
                    },
                    "id": "#picard_collectoxogmetrics_to_sqlite.cwl/vcf"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid+\"_picard_CollectOxoGMetrics.log\")"
                    },
                    "id": "#picard_collectoxogmetrics_to_sqlite.cwl/log"
                },
                {
                    "format": "edam:format_3621",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".db\")"
                    },
                    "id": "#picard_collectoxogmetrics_to_sqlite.cwl/sqlite"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/picard_metrics_sqlite",
                "--metric_name",
                "CollectOxoGMetrics"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_collecttargetedpcrmetrics.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard:092d034713aff237cf07ef28c22a46a113d1a59dc7ec6d71beb72295044a46f8"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 16,
                    "ramMin": 30600,
                    "ramMax": 30600,
                    "tmpdirMin": 1000,
                    "tmpdirMax": 1000,
                    "outdirMin": 1000,
                    "outdirMax": 1000
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "AMPLICON_INTERVALS=",
                        "position": 10,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/AMPLICON_INTERVALS"
                },
                {
                    "type": "string",
                    "default": "true",
                    "inputBinding": {
                        "prefix": "CLIP_OVERLAPPING_READS=",
                        "position": 12,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/CLIP_OVERLAPPING_READS"
                },
                {
                    "type": "int",
                    "default": 200,
                    "inputBinding": {
                        "prefix": "COVERAGE_CAP=",
                        "position": 13,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/COVERAGE_CAP"
                },
                {
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "prefix": "CUSTOM_AMPLICON_SET_NAME=",
                        "position": 11,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/CUSTOM_AMPLICON_SET_NAME"
                },
                {
                    "type": "File",
                    "format": "edam:format_2572",
                    "inputBinding": {
                        "prefix": "INPUT=",
                        "position": 14,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/INPUT"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "string",
                        "inputBinding": {
                            "prefix": "METRIC_ACCUMULATION_LEVEL=",
                            "position": 15,
                            "separate": false
                        }
                    },
                    "default": [
                        "ALL_READS",
                        "LIBRARY",
                        "SAMPLE",
                        "READ_GROUP"
                    ],
                    "id": "#picard_collecttargetedpcrmetrics.cwl/METRIC_ACCUMULATION_LEVEL"
                },
                {
                    "type": "int",
                    "default": 20,
                    "inputBinding": {
                        "prefix": "MINIMUM_BASE_QUALITY=",
                        "position": 16,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/MINIMUM_BASE_QUALITY"
                },
                {
                    "type": "int",
                    "default": 20,
                    "inputBinding": {
                        "prefix": "MINIMUM_MAPPING_QUALITY=",
                        "position": 17,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/MINIMUM_MAPPING_QUALITY"
                },
                {
                    "type": "int",
                    "default": 250,
                    "inputBinding": {
                        "prefix": "NEAR_DISTANCE=",
                        "position": 18,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/NEAR_DISTANCE"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "OUTPUT=",
                        "position": 19,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/OUTPUT"
                },
                {
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "prefix": "PER_BASE_COVERAGE=",
                        "position": 20,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/PER_BASE_COVERAGE"
                },
                {
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "prefix": "PER_TARGET_COVERAGE=",
                        "position": 21,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/PER_TARGET_COVERAGE"
                },
                {
                    "type": "File",
                    "format": "edam:format_1929",
                    "inputBinding": {
                        "prefix": "REFERENCE_SEQUENCE=",
                        "position": 22,
                        "separate": false
                    },
                    "secondaryFiles": [
                        ".fai"
                    ],
                    "id": "#picard_collecttargetedpcrmetrics.cwl/REFERENCE_SEQUENCE"
                },
                {
                    "type": "int",
                    "default": 10000,
                    "inputBinding": {
                        "prefix": "SAMPLE_SIZE=",
                        "position": 23,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/SAMPLE_SIZE"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "TARGET_INTERVALS=",
                        "position": 24,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/TARGET_INTERVALS"
                },
                {
                    "default": "STRICT",
                    "type": "string",
                    "inputBinding": {
                        "prefix": "VALIDATION_STRINGENCY=",
                        "position": 25,
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/VALIDATION_STRINGENCY"
                },
                {
                    "default": "32G",
                    "type": "string",
                    "inputBinding": {
                        "position": -10,
                        "prefix": "-Xmx",
                        "separate": false
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/java_xmx"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.OUTPUT)"
                    },
                    "id": "#picard_collecttargetedpcrmetrics.cwl/METRIC_OUTPUT"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "-jar",
                    "position": -9
                },
                {
                    "valueFrom": "/usr/local/bin/picard.jar",
                    "position": -8
                },
                {
                    "valueFrom": "CollectTargetedPcrMetrics",
                    "position": -7
                }
            ],
            "baseCommand": [
                "java"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_collecttargetedpcrmetrics_to_sqlite.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard_metrics_sqlite:e71798322233d02d67db0158aeeef27990d2d400aadfc92c3687ba85555b0cf8"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 10,
                    "tmpdirMax": 10,
                    "outdirMin": 10,
                    "outdirMax": 10
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--bam"
                    },
                    "id": "#picard_collecttargetedpcrmetrics_to_sqlite.cwl/bam"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--input_state"
                    },
                    "id": "#picard_collecttargetedpcrmetrics_to_sqlite.cwl/input_state"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#picard_collecttargetedpcrmetrics_to_sqlite.cwl/job_uuid"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--metric_path"
                    },
                    "id": "#picard_collecttargetedpcrmetrics_to_sqlite.cwl/metric_path"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid+\"_picard_CollectTargetedPcrMetrics.log\")"
                    },
                    "id": "#picard_collecttargetedpcrmetrics_to_sqlite.cwl/log"
                },
                {
                    "format": "edam:format_3621",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".db\")"
                    },
                    "id": "#picard_collecttargetedpcrmetrics_to_sqlite.cwl/sqlite"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/picard_metrics_sqlite",
                "--metric_name",
                "CollectTargetedPcrMetrics"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_collectwgsmetrics.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard:092d034713aff237cf07ef28c22a46a113d1a59dc7ec6d71beb72295044a46f8"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 8,
                    "ramMin": 15300,
                    "ramMax": 15300,
                    "tmpdirMin": 10,
                    "tmpdirMax": 10,
                    "outdirMin": 10,
                    "outdirMax": 10
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "format": "edam:format_2572",
                    "inputBinding": {
                        "prefix": "INPUT=",
                        "separate": false
                    },
                    "id": "#picard_collectwgsmetrics.cwl/INPUT"
                },
                {
                    "type": "File",
                    "format": "edam:format_1929",
                    "inputBinding": {
                        "prefix": "REFERENCE_SEQUENCE=",
                        "separate": false
                    },
                    "id": "#picard_collectwgsmetrics.cwl/REFERENCE_SEQUENCE"
                },
                {
                    "type": "string",
                    "default": "true",
                    "inputBinding": {
                        "prefix": "USE_FAST_ALGORITHM=",
                        "separate": false
                    },
                    "id": "#picard_collectwgsmetrics.cwl/USE_FAST_ALGORITHM"
                },
                {
                    "default": "STRICT",
                    "type": "string",
                    "inputBinding": {
                        "prefix": "VALIDATION_STRINGENCY=",
                        "separate": false
                    },
                    "id": "#picard_collectwgsmetrics.cwl/VALIDATION_STRINGENCY"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.INPUT.nameroot + \".metrics\")"
                    },
                    "id": "#picard_collectwgsmetrics.cwl/OUTPUT"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "$(inputs.INPUT.nameroot + \".metrics\")",
                    "prefix": "OUTPUT=",
                    "separate": false
                }
            ],
            "baseCommand": [
                "java",
                "-jar",
                "/usr/local/bin/picard.jar",
                "CollectWgsMetrics"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_collectwgsmetrics_to_sqlite.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard_metrics_sqlite:e71798322233d02d67db0158aeeef27990d2d400aadfc92c3687ba85555b0cf8"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 10,
                    "tmpdirMax": 10,
                    "outdirMin": 10,
                    "outdirMax": 10
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--bam"
                    },
                    "id": "#picard_collectwgsmetrics_to_sqlite.cwl/bam"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--fasta"
                    },
                    "id": "#picard_collectwgsmetrics_to_sqlite.cwl/fasta"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--input_state"
                    },
                    "id": "#picard_collectwgsmetrics_to_sqlite.cwl/input_state"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#picard_collectwgsmetrics_to_sqlite.cwl/job_uuid"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--metric_path"
                    },
                    "id": "#picard_collectwgsmetrics_to_sqlite.cwl/metric_path"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid+\"_picard_CollectWgsMetrics.log\")"
                    },
                    "id": "#picard_collectwgsmetrics_to_sqlite.cwl/log"
                },
                {
                    "format": "edam:format_3621",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".db\")"
                    },
                    "id": "#picard_collectwgsmetrics_to_sqlite.cwl/sqlite"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/picard_metrics_sqlite",
                "--metric_name",
                "CollectWgsMetrics"
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
                    "coresMax": 8,
                    "ramMin": 15300,
                    "ramMax": 15300,
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
            "id": "#picard_markduplicates_to_sqlite.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard_metrics_sqlite:e71798322233d02d67db0158aeeef27990d2d400aadfc92c3687ba85555b0cf8"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 1,
                    "tmpdirMax": 1,
                    "outdirMin": 1,
                    "outdirMax": 1
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--bam"
                    },
                    "id": "#picard_markduplicates_to_sqlite.cwl/bam"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--input_state"
                    },
                    "id": "#picard_markduplicates_to_sqlite.cwl/input_state"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#picard_markduplicates_to_sqlite.cwl/job_uuid"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--metric_path"
                    },
                    "id": "#picard_markduplicates_to_sqlite.cwl/metric_path"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid+\"_picard_MarkDuplicates.log\")"
                    },
                    "id": "#picard_markduplicates_to_sqlite.cwl/log"
                },
                {
                    "format": "edam:format_3621",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".db\")"
                    },
                    "id": "#picard_markduplicates_to_sqlite.cwl/sqlite"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/picard_metrics_sqlite",
                "--metric_name",
                "MarkDuplicates"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_mergesamfiles.cwl",
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
                    "coresMax": 8,
                    "ramMin": 15300,
                    "ramMax": 15300,
                    "tmpdirMin": "$(Math.ceil(2 * sum_file_array_size(inputs.INPUT)))",
                    "outdirMin": "$(Math.ceil(2 * sum_file_array_size(inputs.INPUT)))"
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "default": "false",
                    "inputBinding": {
                        "prefix": "ASSUME_SORTED=",
                        "separate": false
                    },
                    "id": "#picard_mergesamfiles.cwl/ASSUME_SORTED"
                },
                {
                    "type": "string",
                    "default": "true",
                    "inputBinding": {
                        "prefix": "CREATE_INDEX=",
                        "separate": false
                    },
                    "id": "#picard_mergesamfiles.cwl/CREATE_INDEX"
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
                    "id": "#picard_mergesamfiles.cwl/INPUT"
                },
                {
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "prefix": "INTERVALS=",
                        "separate": false
                    },
                    "id": "#picard_mergesamfiles.cwl/INTERVALS"
                },
                {
                    "type": "string",
                    "default": "false",
                    "inputBinding": {
                        "prefix": "MERGE_SEQUENCE_DICTIONARIES=",
                        "separate": false
                    },
                    "id": "#picard_mergesamfiles.cwl/MERGE_SEQUENCE_DICTIONARIES"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "OUTPUT=",
                        "separate": false
                    },
                    "id": "#picard_mergesamfiles.cwl/OUTPUT"
                },
                {
                    "type": "string",
                    "default": "coordinate",
                    "inputBinding": {
                        "prefix": "SORT_ORDER=",
                        "separate": false
                    },
                    "id": "#picard_mergesamfiles.cwl/SORT_ORDER"
                },
                {
                    "type": "string",
                    "default": ".",
                    "inputBinding": {
                        "prefix": "TMP_DIR=",
                        "separate": false
                    },
                    "id": "#picard_mergesamfiles.cwl/TMP_DIR"
                },
                {
                    "type": "string",
                    "default": "true",
                    "inputBinding": {
                        "prefix": "USE_THREADING=",
                        "separate": false
                    },
                    "id": "#picard_mergesamfiles.cwl/USE_THREADING"
                },
                {
                    "type": "string",
                    "default": "STRICT",
                    "inputBinding": {
                        "prefix": "VALIDATION_STRINGENCY=",
                        "separate": false
                    },
                    "id": "#picard_mergesamfiles.cwl/VALIDATION_STRINGENCY"
                }
            ],
            "outputs": [
                {
                    "format": "edam:format_2572",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.OUTPUT)"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "id": "#picard_mergesamfiles.cwl/MERGED_OUTPUT"
                }
            ],
            "baseCommand": [
                "java",
                "-jar",
                "/usr/local/bin/picard.jar",
                "MergeSamFiles"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_validatesamfile.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard:092d034713aff237cf07ef28c22a46a113d1a59dc7ec6d71beb72295044a46f8"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 4,
                    "ramMin": 7600,
                    "ramMax": 7600,
                    "tmpdirMin": 1000,
                    "tmpdirMax": 1000,
                    "outdirMin": 1000,
                    "outdirMax": 1000
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "default": "true",
                    "inputBinding": {
                        "prefix": "IGNORE_WARNINGS=",
                        "separate": false
                    },
                    "id": "#picard_validatesamfile.cwl/IGNORE_WARNINGS"
                },
                {
                    "type": "string",
                    "default": "NONE",
                    "inputBinding": {
                        "prefix": "INDEX_VALIDATION_STRINGENCY=",
                        "separate": false
                    },
                    "id": "#picard_validatesamfile.cwl/INDEX_VALIDATION_STRINGENCY"
                },
                {
                    "type": "File",
                    "format": "edam:format_2572",
                    "inputBinding": {
                        "prefix": "INPUT=",
                        "separate": false
                    },
                    "id": "#picard_validatesamfile.cwl/INPUT"
                },
                {
                    "type": "int",
                    "default": 2147483647,
                    "inputBinding": {
                        "prefix": "MAX_OUTPUT=",
                        "separate": false
                    },
                    "id": "#picard_validatesamfile.cwl/MAX_OUTPUT"
                },
                {
                    "type": "string",
                    "default": "VERBOSE",
                    "inputBinding": {
                        "prefix": "MODE=",
                        "separate": false
                    },
                    "id": "#picard_validatesamfile.cwl/MODE"
                },
                {
                    "type": "string",
                    "default": ".",
                    "inputBinding": {
                        "prefix": "TMP_DIR=",
                        "separate": false
                    },
                    "id": "#picard_validatesamfile.cwl/TMP_DIR"
                },
                {
                    "type": "string",
                    "default": "false",
                    "inputBinding": {
                        "prefix": "VALIDATE_INDEX=",
                        "separate": false
                    },
                    "id": "#picard_validatesamfile.cwl/VALIDATE_INDEX"
                },
                {
                    "default": "STRICT",
                    "type": "string",
                    "inputBinding": {
                        "prefix": "VALIDATION_STRINGENCY=",
                        "separate": false
                    },
                    "id": "#picard_validatesamfile.cwl/VALIDATION_STRINGENCY"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.INPUT.basename + \".metrics\")"
                    },
                    "id": "#picard_validatesamfile.cwl/OUTPUT"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "$(inputs.INPUT.basename + \".metrics\")",
                    "prefix": "OUTPUT=",
                    "separate": false
                }
            ],
            "successCodes": [
                0,
                2,
                3
            ],
            "baseCommand": [
                "java",
                "-jar",
                "/usr/local/bin/picard.jar",
                "ValidateSamFile",
                "IS_BISULFITE_SEQUENCED=false"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_validatesamfile_to_sqlite.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/picard_metrics_sqlite:e71798322233d02d67db0158aeeef27990d2d400aadfc92c3687ba85555b0cf8"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 1,
                    "tmpdirMax": 1,
                    "outdirMin": 1,
                    "outdirMax": 1
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--bam"
                    },
                    "id": "#picard_validatesamfile_to_sqlite.cwl/bam"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--input_state"
                    },
                    "id": "#picard_validatesamfile_to_sqlite.cwl/input_state"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#picard_validatesamfile_to_sqlite.cwl/job_uuid"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--metric_path"
                    },
                    "id": "#picard_validatesamfile_to_sqlite.cwl/metric_path"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid+\"_picard_ValidateSamFile.log\")"
                    },
                    "id": "#picard_validatesamfile_to_sqlite.cwl/log"
                },
                {
                    "format": "edam:format_3621",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".db\")"
                    },
                    "id": "#picard_validatesamfile_to_sqlite.cwl/sqlite"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/picard_metrics_sqlite",
                "--metric_name",
                "ValidateSamFile"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#readgroup_json_db.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/readgroup_json_db:d1c36c48491afa45c76c23624ecf69b37b4f276019cb6e168364f564452e5b37"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 1,
                    "tmpdirMax": 1,
                    "outdirMin": 1,
                    "outdirMax": 1
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#readgroup_json_db.cwl/job_uuid"
                },
                {
                    "type": "File",
                    "format": "edam:format_3464",
                    "inputBinding": {
                        "prefix": "--json_path"
                    },
                    "id": "#readgroup_json_db.cwl/json_path"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid +\".log\")"
                    },
                    "id": "#readgroup_json_db.cwl/log"
                },
                {
                    "type": "File",
                    "format": "edam:format_3621",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".db\")"
                    },
                    "id": "#readgroup_json_db.cwl/output_sqlite"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/readgroup_json_db"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#samtools_flagstat.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/samtools:147bd4cc606a63c7435907d97fea6e94e9ea9ed58c18f390cab8bc40b1992df7"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 5,
                    "tmpdirMax": 5,
                    "outdirMin": 5,
                    "outdirMax": 5
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "format": "edam:format_2572",
                    "inputBinding": {
                        "position": 1
                    },
                    "id": "#samtools_flagstat.cwl/INPUT"
                },
                {
                    "type": "int",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-@"
                    },
                    "id": "#samtools_flagstat.cwl/threads"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.INPUT.nameroot + \".flagstat\")"
                    },
                    "id": "#samtools_flagstat.cwl/OUTPUT"
                }
            ],
            "stdout": "$(inputs.INPUT.nameroot + \".flagstat\")",
            "baseCommand": [
                "/usr/local/bin/samtools",
                "flagstat"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#samtools_flagstat_to_sqlite.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/samtools_metrics_sqlite:f64466282ce61dfc9251e7c32c5130928abf0a68c1f8e00b47d9709c5b3e3321"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 5,
                    "tmpdirMax": 5,
                    "outdirMin": 5,
                    "outdirMax": 5
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--bam"
                    },
                    "id": "#samtools_flagstat_to_sqlite.cwl/bam"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--input_state"
                    },
                    "id": "#samtools_flagstat_to_sqlite.cwl/input_state"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#samtools_flagstat_to_sqlite.cwl/job_uuid"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--metric_path"
                    },
                    "id": "#samtools_flagstat_to_sqlite.cwl/metric_path"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid+\"_samtools_flagstat.log\")"
                    },
                    "id": "#samtools_flagstat_to_sqlite.cwl/log"
                },
                {
                    "format": "edam:format_3621",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".db\")"
                    },
                    "id": "#samtools_flagstat_to_sqlite.cwl/sqlite"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/samtools_metrics_sqlite",
                "--metric_name",
                "flagstat"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#samtools_idxstats.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/samtools:147bd4cc606a63c7435907d97fea6e94e9ea9ed58c18f390cab8bc40b1992df7"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 5,
                    "tmpdirMax": 5,
                    "outdirMin": 5,
                    "outdirMax": 5
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "format": "edam:format_2572",
                    "inputBinding": {
                        "position": 0
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "id": "#samtools_idxstats.cwl/INPUT"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.INPUT.nameroot + \".idxstats\")"
                    },
                    "id": "#samtools_idxstats.cwl/OUTPUT"
                }
            ],
            "stdout": "$(inputs.INPUT.nameroot + \".idxstats\")",
            "baseCommand": [
                "/usr/local/bin/samtools",
                "idxstats"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#samtools_idxstats_to_sqlite.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/samtools_metrics_sqlite:f64466282ce61dfc9251e7c32c5130928abf0a68c1f8e00b47d9709c5b3e3321"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 5,
                    "tmpdirMax": 5,
                    "outdirMin": 5,
                    "outdirMax": 5
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--bam"
                    },
                    "id": "#samtools_idxstats_to_sqlite.cwl/bam"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--input_state"
                    },
                    "id": "#samtools_idxstats_to_sqlite.cwl/input_state"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#samtools_idxstats_to_sqlite.cwl/job_uuid"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--metric_path"
                    },
                    "id": "#samtools_idxstats_to_sqlite.cwl/metric_path"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid+\"_samtools_idxstats.log\")"
                    },
                    "id": "#samtools_idxstats_to_sqlite.cwl/log"
                },
                {
                    "format": "edam:format_3621",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".db\")"
                    },
                    "id": "#samtools_idxstats_to_sqlite.cwl/sqlite"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/samtools_metrics_sqlite",
                "--metric_name",
                "idxstats"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#samtools_index.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/samtools:147bd4cc606a63c7435907d97fea6e94e9ea9ed58c18f390cab8bc40b1992df7"
                },
                {
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        {
                            "entry": "$(inputs.input_bam)",
                            "writable": false
                        }
                    ]
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
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": "$(file_size_multiplier(inputs.input_bam))",
                    "outdirMin": "$(file_size_multiplier(inputs.input_bam))"
                }
            ],
            "inputs": [
                {
                    "format": "edam:format_2572",
                    "type": "File",
                    "inputBinding": {
                        "position": 1,
                        "valueFrom": "$(self.basename)"
                    },
                    "id": "#samtools_index.cwl/input_bam"
                },
                {
                    "type": "int",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-@"
                    },
                    "id": "#samtools_index.cwl/threads"
                }
            ],
            "outputs": [
                {
                    "format": "edam:format_2572",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.input_bam.basename)"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "id": "#samtools_index.cwl/output_bam"
                }
            ],
            "baseCommand": [
                "samtools",
                "index",
                "-b"
            ],
            "arguments": [
                {
                    "valueFrom": "$(inputs.input_bam.basename.slice(0,-4) + '.bai')",
                    "position": 2
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#samtools_sort.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/samtools:147bd4cc606a63c7435907d97fea6e94e9ea9ed58c18f390cab8bc40b1992df7"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 8,
                    "ramMin": 15300,
                    "ramMax": 15300,
                    "tmpdirMin": "$((2 * inputs.input_bam.size) / 1048576)",
                    "outdirMin": "$((2 * inputs.input_bam.size) / 1048576)"
                }
            ],
            "inputs": [
                {
                    "format": "edam:format_2572",
                    "type": "File",
                    "inputBinding": {
                        "position": 3
                    },
                    "id": "#samtools_sort.cwl/input_bam"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "position": 1,
                        "prefix": "-o"
                    },
                    "id": "#samtools_sort.cwl/output_bam"
                },
                {
                    "type": "string",
                    "default": "tmp_srt",
                    "inputBinding": {
                        "position": 2,
                        "prefix": "-T"
                    },
                    "id": "#samtools_sort.cwl/prefix"
                },
                {
                    "type": "int",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-@"
                    },
                    "id": "#samtools_sort.cwl/threads"
                }
            ],
            "outputs": [
                {
                    "format": "edam:format_2572",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.output_bam)"
                    },
                    "id": "#samtools_sort.cwl/bam"
                }
            ],
            "baseCommand": [
                "samtools",
                "sort"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#samtools_stats.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/samtools:147bd4cc606a63c7435907d97fea6e94e9ea9ed58c18f390cab8bc40b1992df7"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 5,
                    "outdirMin": 5
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "format": "edam:format_2572",
                    "inputBinding": {
                        "position": 1
                    },
                    "id": "#samtools_stats.cwl/INPUT"
                },
                {
                    "type": "int",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-@"
                    },
                    "id": "#samtools_stats.cwl/threads"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.INPUT.nameroot + \".stats\")"
                    },
                    "id": "#samtools_stats.cwl/OUTPUT"
                }
            ],
            "stdout": "$(inputs.INPUT.nameroot + \".stats\")",
            "baseCommand": [
                "/usr/local/bin/samtools",
                "stats"
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#samtools_stats_to_sqlite.cwl",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "quay.io/ncigdc/samtools_metrics_sqlite:f64466282ce61dfc9251e7c32c5130928abf0a68c1f8e00b47d9709c5b3e3321"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "coresMin": 1,
                    "coresMax": 2,
                    "ramMin": 3800,
                    "ramMax": 3800,
                    "tmpdirMin": 5,
                    "tmpdirMax": 5,
                    "outdirMin": 5,
                    "outdirMax": 5
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--bam"
                    },
                    "id": "#samtools_stats_to_sqlite.cwl/bam"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--input_state"
                    },
                    "id": "#samtools_stats_to_sqlite.cwl/input_state"
                },
                {
                    "type": "string",
                    "inputBinding": {
                        "prefix": "--job_uuid"
                    },
                    "id": "#samtools_stats_to_sqlite.cwl/job_uuid"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--metric_path"
                    },
                    "id": "#samtools_stats_to_sqlite.cwl/metric_path"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid+\"_samtools_stats.log\")"
                    },
                    "id": "#samtools_stats_to_sqlite.cwl/log"
                },
                {
                    "format": "edam:format_3621",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.job_uuid + \".db\")"
                    },
                    "id": "#samtools_stats_to_sqlite.cwl/sqlite"
                }
            ],
            "baseCommand": [
                "/usr/local/bin/samtools_metrics_sqlite",
                "--metric_name",
                "stats"
            ]
        },
        {
            "class": "Workflow",
            "id": "#bwa_pe.cwl",
            "requirements": [
                {
                    "class": "ScatterFeatureRequirement"
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
                    "class": "StepInputExpressionRequirement"
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "id": "#bwa_pe.cwl/job_uuid"
                },
                {
                    "type": "#readgroup.yml/readgroup_fastq_file",
                    "id": "#bwa_pe.cwl/readgroup_fastq_pe"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".fai",
                        ".pac",
                        ".sa",
                        "^.dict"
                    ],
                    "id": "#bwa_pe.cwl/reference_sequence"
                },
                {
                    "type": "int",
                    "id": "#bwa_pe.cwl/thread_count"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputSource": "#bwa_pe.cwl/bwa_pe/OUTPUT",
                    "id": "#bwa_pe.cwl/bam"
                },
                {
                    "type": "File",
                    "outputSource": "#bwa_pe.cwl/merge_sqlite/destination_sqlite",
                    "id": "#bwa_pe.cwl/sqlite"
                }
            ],
            "steps": [
                {
                    "run": "#bam_readgroup_to_json.cwl",
                    "in": [
                        {
                            "source": "#bwa_pe.cwl/bwa_pe/OUTPUT",
                            "id": "#bwa_pe.cwl/bam_readgroup_to_json/INPUT"
                        },
                        {
                            "valueFrom": "lenient",
                            "id": "#bwa_pe.cwl/bam_readgroup_to_json/MODE"
                        }
                    ],
                    "out": [
                        "#bwa_pe.cwl/bam_readgroup_to_json/OUTPUT"
                    ],
                    "id": "#bwa_pe.cwl/bam_readgroup_to_json"
                },
                {
                    "run": "#bwa_record_pe.cwl",
                    "in": [
                        {
                            "source": "#bwa_pe.cwl/reference_sequence",
                            "id": "#bwa_pe.cwl/bwa_pe/fasta"
                        },
                        {
                            "source": "#bwa_pe.cwl/readgroup_fastq_pe",
                            "valueFrom": "$(self.forward_fastq)",
                            "id": "#bwa_pe.cwl/bwa_pe/fastq1"
                        },
                        {
                            "source": "#bwa_pe.cwl/readgroup_fastq_pe",
                            "valueFrom": "$(self.reverse_fastq)",
                            "id": "#bwa_pe.cwl/bwa_pe/fastq2"
                        },
                        {
                            "source": "#bwa_pe.cwl/fastqc_basicstats_json/OUTPUT",
                            "id": "#bwa_pe.cwl/bwa_pe/fastqc_json_path"
                        },
                        {
                            "source": "#bwa_pe.cwl/readgroup_fastq_pe",
                            "valueFrom": "$(self.readgroup_meta)",
                            "id": "#bwa_pe.cwl/bwa_pe/readgroup_meta"
                        },
                        {
                            "source": "#bwa_pe.cwl/thread_count",
                            "id": "#bwa_pe.cwl/bwa_pe/thread_count"
                        }
                    ],
                    "out": [
                        "#bwa_pe.cwl/bwa_pe/OUTPUT"
                    ],
                    "id": "#bwa_pe.cwl/bwa_pe"
                },
                {
                    "run": "#fastqc.cwl",
                    "in": [
                        {
                            "source": "#bwa_pe.cwl/readgroup_fastq_pe",
                            "valueFrom": "$(self.forward_fastq)",
                            "id": "#bwa_pe.cwl/fastqc1/INPUT"
                        },
                        {
                            "source": "#bwa_pe.cwl/thread_count",
                            "id": "#bwa_pe.cwl/fastqc1/threads"
                        }
                    ],
                    "out": [
                        "#bwa_pe.cwl/fastqc1/OUTPUT"
                    ],
                    "id": "#bwa_pe.cwl/fastqc1"
                },
                {
                    "run": "#fastqc.cwl",
                    "in": [
                        {
                            "source": "#bwa_pe.cwl/readgroup_fastq_pe",
                            "valueFrom": "$(self.reverse_fastq)",
                            "id": "#bwa_pe.cwl/fastqc2/INPUT"
                        },
                        {
                            "source": "#bwa_pe.cwl/thread_count",
                            "id": "#bwa_pe.cwl/fastqc2/threads"
                        }
                    ],
                    "out": [
                        "#bwa_pe.cwl/fastqc2/OUTPUT"
                    ],
                    "id": "#bwa_pe.cwl/fastqc2"
                },
                {
                    "run": "#fastqc_basicstatistics_json.cwl",
                    "in": [
                        {
                            "source": "#bwa_pe.cwl/fastqc_db1/OUTPUT",
                            "id": "#bwa_pe.cwl/fastqc_basicstats_json/sqlite_path"
                        }
                    ],
                    "out": [
                        "#bwa_pe.cwl/fastqc_basicstats_json/OUTPUT"
                    ],
                    "id": "#bwa_pe.cwl/fastqc_basicstats_json"
                },
                {
                    "run": "#fastqc_db.cwl",
                    "in": [
                        {
                            "source": "#bwa_pe.cwl/fastqc1/OUTPUT",
                            "id": "#bwa_pe.cwl/fastqc_db1/INPUT"
                        },
                        {
                            "source": "#bwa_pe.cwl/job_uuid",
                            "id": "#bwa_pe.cwl/fastqc_db1/job_uuid"
                        }
                    ],
                    "out": [
                        "#bwa_pe.cwl/fastqc_db1/LOG",
                        "#bwa_pe.cwl/fastqc_db1/OUTPUT"
                    ],
                    "id": "#bwa_pe.cwl/fastqc_db1"
                },
                {
                    "run": "#fastqc_db.cwl",
                    "in": [
                        {
                            "source": "#bwa_pe.cwl/fastqc2/OUTPUT",
                            "id": "#bwa_pe.cwl/fastqc_db2/INPUT"
                        },
                        {
                            "source": "#bwa_pe.cwl/job_uuid",
                            "id": "#bwa_pe.cwl/fastqc_db2/job_uuid"
                        }
                    ],
                    "out": [
                        "#bwa_pe.cwl/fastqc_db2/LOG",
                        "#bwa_pe.cwl/fastqc_db2/OUTPUT"
                    ],
                    "id": "#bwa_pe.cwl/fastqc_db2"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#bwa_pe.cwl/job_uuid",
                            "id": "#bwa_pe.cwl/merge_readgroup_json_db/job_uuid"
                        },
                        {
                            "source": "#bwa_pe.cwl/readgroup_json_db/output_sqlite",
                            "id": "#bwa_pe.cwl/merge_readgroup_json_db/source_sqlite"
                        }
                    ],
                    "out": [
                        "#bwa_pe.cwl/merge_readgroup_json_db/destination_sqlite"
                    ],
                    "id": "#bwa_pe.cwl/merge_readgroup_json_db"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#bwa_pe.cwl/job_uuid",
                            "id": "#bwa_pe.cwl/merge_sqlite/job_uuid"
                        },
                        {
                            "source": [
                                "#bwa_pe.cwl/fastqc_db1/OUTPUT",
                                "#bwa_pe.cwl/fastqc_db2/OUTPUT",
                                "#bwa_pe.cwl/merge_readgroup_json_db/destination_sqlite"
                            ],
                            "id": "#bwa_pe.cwl/merge_sqlite/source_sqlite"
                        }
                    ],
                    "out": [
                        "#bwa_pe.cwl/merge_sqlite/destination_sqlite",
                        "#bwa_pe.cwl/merge_sqlite/log"
                    ],
                    "id": "#bwa_pe.cwl/merge_sqlite"
                },
                {
                    "run": "#readgroup_json_db.cwl",
                    "scatter": "#bwa_pe.cwl/readgroup_json_db/json_path",
                    "in": [
                        {
                            "source": "#bwa_pe.cwl/job_uuid",
                            "id": "#bwa_pe.cwl/readgroup_json_db/job_uuid"
                        },
                        {
                            "source": "#bwa_pe.cwl/bam_readgroup_to_json/OUTPUT",
                            "id": "#bwa_pe.cwl/readgroup_json_db/json_path"
                        }
                    ],
                    "out": [
                        "#bwa_pe.cwl/readgroup_json_db/log",
                        "#bwa_pe.cwl/readgroup_json_db/output_sqlite"
                    ],
                    "id": "#bwa_pe.cwl/readgroup_json_db"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#bwa_se.cwl",
            "requirements": [
                {
                    "class": "ScatterFeatureRequirement"
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
                    "class": "StepInputExpressionRequirement"
                }
            ],
            "inputs": [
                {
                    "type": "string",
                    "id": "#bwa_se.cwl/job_uuid"
                },
                {
                    "type": "#readgroup.yml/readgroup_fastq_file",
                    "id": "#bwa_se.cwl/readgroup_fastq_se"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".fai",
                        ".pac",
                        ".sa",
                        "^.dict"
                    ],
                    "id": "#bwa_se.cwl/reference_sequence"
                },
                {
                    "type": "int",
                    "id": "#bwa_se.cwl/thread_count"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputSource": "#bwa_se.cwl/bwa_se/OUTPUT",
                    "id": "#bwa_se.cwl/bam"
                },
                {
                    "type": "File",
                    "outputSource": "#bwa_se.cwl/merge_sqlite/destination_sqlite",
                    "id": "#bwa_se.cwl/sqlite"
                }
            ],
            "steps": [
                {
                    "run": "#bam_readgroup_to_json.cwl",
                    "in": [
                        {
                            "source": "#bwa_se.cwl/bwa_se/OUTPUT",
                            "id": "#bwa_se.cwl/bam_readgroup_to_json/INPUT"
                        },
                        {
                            "valueFrom": "lenient",
                            "id": "#bwa_se.cwl/bam_readgroup_to_json/MODE"
                        }
                    ],
                    "out": [
                        "#bwa_se.cwl/bam_readgroup_to_json/OUTPUT"
                    ],
                    "id": "#bwa_se.cwl/bam_readgroup_to_json"
                },
                {
                    "run": "#bwa_record_se.cwl",
                    "in": [
                        {
                            "source": "#bwa_se.cwl/reference_sequence",
                            "id": "#bwa_se.cwl/bwa_se/fasta"
                        },
                        {
                            "source": "#bwa_se.cwl/readgroup_fastq_se",
                            "valueFrom": "$(self.forward_fastq)",
                            "id": "#bwa_se.cwl/bwa_se/fastq"
                        },
                        {
                            "source": "#bwa_se.cwl/fastqc_basicstats_json/OUTPUT",
                            "id": "#bwa_se.cwl/bwa_se/fastqc_json_path"
                        },
                        {
                            "source": "#bwa_se.cwl/readgroup_fastq_se",
                            "valueFrom": "$(self.readgroup_meta)",
                            "id": "#bwa_se.cwl/bwa_se/readgroup_meta"
                        },
                        {
                            "source": "#bwa_se.cwl/thread_count",
                            "id": "#bwa_se.cwl/bwa_se/thread_count"
                        }
                    ],
                    "out": [
                        "#bwa_se.cwl/bwa_se/OUTPUT"
                    ],
                    "id": "#bwa_se.cwl/bwa_se"
                },
                {
                    "run": "#fastqc.cwl",
                    "in": [
                        {
                            "source": "#bwa_se.cwl/readgroup_fastq_se",
                            "valueFrom": "$(self.forward_fastq)",
                            "id": "#bwa_se.cwl/fastqc/INPUT"
                        },
                        {
                            "source": "#bwa_se.cwl/thread_count",
                            "id": "#bwa_se.cwl/fastqc/threads"
                        }
                    ],
                    "out": [
                        "#bwa_se.cwl/fastqc/OUTPUT"
                    ],
                    "id": "#bwa_se.cwl/fastqc"
                },
                {
                    "run": "#fastqc_basicstatistics_json.cwl",
                    "in": [
                        {
                            "source": "#bwa_se.cwl/fastqc_db/OUTPUT",
                            "id": "#bwa_se.cwl/fastqc_basicstats_json/sqlite_path"
                        }
                    ],
                    "out": [
                        "#bwa_se.cwl/fastqc_basicstats_json/OUTPUT"
                    ],
                    "id": "#bwa_se.cwl/fastqc_basicstats_json"
                },
                {
                    "run": "#fastqc_db.cwl",
                    "in": [
                        {
                            "source": "#bwa_se.cwl/fastqc/OUTPUT",
                            "id": "#bwa_se.cwl/fastqc_db/INPUT"
                        },
                        {
                            "source": "#bwa_se.cwl/job_uuid",
                            "id": "#bwa_se.cwl/fastqc_db/job_uuid"
                        }
                    ],
                    "out": [
                        "#bwa_se.cwl/fastqc_db/LOG",
                        "#bwa_se.cwl/fastqc_db/OUTPUT"
                    ],
                    "id": "#bwa_se.cwl/fastqc_db"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#bwa_se.cwl/job_uuid",
                            "id": "#bwa_se.cwl/merge_readgroup_json_db/job_uuid"
                        },
                        {
                            "source": "#bwa_se.cwl/readgroup_json_db/output_sqlite",
                            "id": "#bwa_se.cwl/merge_readgroup_json_db/source_sqlite"
                        }
                    ],
                    "out": [
                        "#bwa_se.cwl/merge_readgroup_json_db/destination_sqlite"
                    ],
                    "id": "#bwa_se.cwl/merge_readgroup_json_db"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#bwa_se.cwl/job_uuid",
                            "id": "#bwa_se.cwl/merge_sqlite/job_uuid"
                        },
                        {
                            "source": [
                                "#bwa_se.cwl/fastqc_db/OUTPUT",
                                "#bwa_se.cwl/merge_readgroup_json_db/destination_sqlite"
                            ],
                            "id": "#bwa_se.cwl/merge_sqlite/source_sqlite"
                        }
                    ],
                    "out": [
                        "#bwa_se.cwl/merge_sqlite/destination_sqlite",
                        "#bwa_se.cwl/merge_sqlite/log"
                    ],
                    "id": "#bwa_se.cwl/merge_sqlite"
                },
                {
                    "run": "#readgroup_json_db.cwl",
                    "scatter": "#bwa_se.cwl/readgroup_json_db/json_path",
                    "in": [
                        {
                            "source": "#bwa_se.cwl/job_uuid",
                            "id": "#bwa_se.cwl/readgroup_json_db/job_uuid"
                        },
                        {
                            "source": "#bwa_se.cwl/bam_readgroup_to_json/OUTPUT",
                            "id": "#bwa_se.cwl/readgroup_json_db/json_path"
                        }
                    ],
                    "out": [
                        "#bwa_se.cwl/readgroup_json_db/log",
                        "#bwa_se.cwl/readgroup_json_db/output_sqlite"
                    ],
                    "id": "#bwa_se.cwl/readgroup_json_db"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#main",
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "MultipleInputFeatureRequirement"
                },
                {
                    "class": "ScatterFeatureRequirement"
                },
                {
                    "class": "SchemaDefRequirement",
                    "types": [
                        {
                            "name": "#target_kit_schema.yml/amplicon_kit_set_file",
                            "type": "record",
                            "fields": [
                                {
                                    "name": "#target_kit_schema.yml/amplicon_kit_set_file/amplicon_kit_amplicon_file",
                                    "type": "File"
                                },
                                {
                                    "name": "#target_kit_schema.yml/amplicon_kit_set_file/amplicon_kit_target_file",
                                    "type": "File"
                                }
                            ]
                        },
                        {
                            "name": "#target_kit_schema.yml/amplicon_kit_set_uuid",
                            "type": "record",
                            "fields": [
                                {
                                    "name": "#target_kit_schema.yml/amplicon_kit_set_uuid/amplicon_kit_amplicon_uuid",
                                    "type": "string"
                                },
                                {
                                    "name": "#target_kit_schema.yml/amplicon_kit_set_uuid/amplicon_kit_amplicon_file_size",
                                    "type": "int"
                                },
                                {
                                    "name": "#target_kit_schema.yml/amplicon_kit_set_uuid/amplicon_kit_target_uuid",
                                    "type": "string"
                                },
                                {
                                    "name": "#target_kit_schema.yml/amplicon_kit_set_uuid/amplicon_kit_target_file_size",
                                    "type": "int"
                                }
                            ]
                        },
                        {
                            "name": "#target_kit_schema.yml/capture_kit_set_file",
                            "type": "record",
                            "fields": [
                                {
                                    "name": "#target_kit_schema.yml/capture_kit_set_file/capture_kit_bait_file",
                                    "type": "File"
                                },
                                {
                                    "name": "#target_kit_schema.yml/capture_kit_set_file/capture_kit_target_file",
                                    "type": "File"
                                }
                            ]
                        },
                        {
                            "name": "#target_kit_schema.yml/capture_kit_set_uuid",
                            "type": "record",
                            "fields": [
                                {
                                    "name": "#target_kit_schema.yml/capture_kit_set_uuid/capture_kit_bait_uuid",
                                    "type": "string"
                                },
                                {
                                    "name": "#target_kit_schema.yml/capture_kit_set_uuid/capture_kit_bait_file_size",
                                    "type": "int"
                                },
                                {
                                    "name": "#target_kit_schema.yml/capture_kit_set_uuid/capture_kit_target_uuid",
                                    "type": "string"
                                },
                                {
                                    "name": "#target_kit_schema.yml/capture_kit_set_uuid/capture_kit_target_file_size",
                                    "type": "int"
                                }
                            ]
                        },
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
                    "class": "StepInputExpressionRequirement"
                },
                {
                    "class": "SubworkflowFeatureRequirement"
                }
            ],
            "inputs": [
                {
                    "type": {
                        "type": "array",
                        "items": "#target_kit_schema.yml/amplicon_kit_set_file"
                    },
                    "id": "#main/amplicon_kit_set_file_list"
                },
                {
                    "type": "string",
                    "id": "#main/bam_name"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "#target_kit_schema.yml/capture_kit_set_file"
                    },
                    "id": "#main/capture_kit_set_file_list"
                },
                {
                    "type": "boolean",
                    "id": "#main/collect_wgs_metrics"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".tbi"
                    ],
                    "id": "#main/common_biallelic_vcf"
                },
                {
                    "type": "string",
                    "id": "#main/job_uuid"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".tbi"
                    ],
                    "id": "#main/known_snp"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_fastq_file"
                    },
                    "id": "#main/readgroup_fastq_pe_file_list"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_fastq_file"
                    },
                    "id": "#main/readgroup_fastq_se_file_list"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroups_bam_file"
                    },
                    "id": "#main/readgroups_bam_file_list"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".fai",
                        ".pac",
                        ".sa",
                        "^.dict"
                    ],
                    "id": "#main/reference_sequence"
                },
                {
                    "type": "boolean",
                    "id": "#main/run_markduplicates"
                },
                {
                    "type": "int",
                    "id": "#main/thread_count"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputSource": "#main/gatk_applybqsr/output_bam",
                    "id": "#main/output_bam"
                },
                {
                    "type": "File",
                    "outputSource": "#main/merge_all_sqlite/destination_sqlite",
                    "id": "#main/sqlite"
                }
            ],
            "steps": [
                {
                    "run": "#bwa_pe.cwl",
                    "scatter": "#main/bwa_pe/readgroup_fastq_pe",
                    "in": [
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/bwa_pe/job_uuid"
                        },
                        {
                            "source": "#main/merge_fastq_arrays/merged_pe_fastq_array",
                            "id": "#main/bwa_pe/readgroup_fastq_pe"
                        },
                        {
                            "source": "#main/reference_sequence",
                            "id": "#main/bwa_pe/reference_sequence"
                        },
                        {
                            "source": "#main/thread_count",
                            "id": "#main/bwa_pe/thread_count"
                        }
                    ],
                    "out": [
                        "#main/bwa_pe/bam",
                        "#main/bwa_pe/sqlite"
                    ],
                    "id": "#main/bwa_pe"
                },
                {
                    "run": "#bwa_se.cwl",
                    "scatter": "#main/bwa_se/readgroup_fastq_se",
                    "in": [
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/bwa_se/job_uuid"
                        },
                        {
                            "source": "#main/merge_fastq_arrays/merged_se_fastq_array",
                            "id": "#main/bwa_se/readgroup_fastq_se"
                        },
                        {
                            "source": "#main/reference_sequence",
                            "id": "#main/bwa_se/reference_sequence"
                        },
                        {
                            "source": "#main/thread_count",
                            "id": "#main/bwa_se/thread_count"
                        }
                    ],
                    "out": [
                        "#main/bwa_se/bam",
                        "#main/bwa_se/sqlite"
                    ],
                    "id": "#main/bwa_se"
                },
                {
                    "run": "#conditional_markduplicates.cwl",
                    "scatter": "#main/conditional_markduplicates/run_markduplicates",
                    "in": [
                        {
                            "source": "#main/dup_branch_decider/out_bam",
                            "id": "#main/conditional_markduplicates/bam"
                        },
                        {
                            "source": "#main/bam_name",
                            "id": "#main/conditional_markduplicates/bam_name"
                        },
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/conditional_markduplicates/job_uuid"
                        },
                        {
                            "source": "#main/dup_branch_decider/do_markdup_workflow",
                            "id": "#main/conditional_markduplicates/run_markduplicates"
                        },
                        {
                            "source": "#main/thread_count",
                            "id": "#main/conditional_markduplicates/thread_count"
                        }
                    ],
                    "out": [
                        "#main/conditional_markduplicates/output",
                        "#main/conditional_markduplicates/sqlite"
                    ],
                    "id": "#main/conditional_markduplicates"
                },
                {
                    "run": "#conditional_skip_markduplicates.cwl",
                    "scatter": "#main/conditional_skip_markduplicates/skip_markduplicates",
                    "in": [
                        {
                            "source": "#main/dup_branch_decider/out_bam",
                            "id": "#main/conditional_skip_markduplicates/bam"
                        },
                        {
                            "source": "#main/bam_name",
                            "id": "#main/conditional_skip_markduplicates/bam_name"
                        },
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/conditional_skip_markduplicates/job_uuid"
                        },
                        {
                            "source": "#main/dup_branch_decider/skip_markdup_workflow",
                            "id": "#main/conditional_skip_markduplicates/skip_markduplicates"
                        },
                        {
                            "source": "#main/thread_count",
                            "id": "#main/conditional_skip_markduplicates/thread_count"
                        }
                    ],
                    "out": [
                        "#main/conditional_skip_markduplicates/output"
                    ],
                    "id": "#main/conditional_skip_markduplicates"
                },
                {
                    "run": "#decider_markdup_input.cwl",
                    "in": [
                        {
                            "source": [
                                "#main/bwa_pe/bam",
                                "#main/bwa_se/bam"
                            ],
                            "id": "#main/dup_branch_decider/bam"
                        },
                        {
                            "source": "#main/run_markduplicates",
                            "id": "#main/dup_branch_decider/run_markdups"
                        }
                    ],
                    "out": [
                        "#main/dup_branch_decider/do_markdup_workflow",
                        "#main/dup_branch_decider/skip_markdup_workflow",
                        "#main/dup_branch_decider/out_bam"
                    ],
                    "id": "#main/dup_branch_decider"
                },
                {
                    "run": "#decider_markdup_output.cwl",
                    "in": [
                        {
                            "source": "#main/conditional_markduplicates/output",
                            "id": "#main/dup_outputs_decider/markdup_bam"
                        },
                        {
                            "source": "#main/conditional_markduplicates/sqlite",
                            "id": "#main/dup_outputs_decider/markdup_sqlite"
                        },
                        {
                            "source": "#main/conditional_skip_markduplicates/output",
                            "id": "#main/dup_outputs_decider/skip_markdup_bam"
                        }
                    ],
                    "out": [
                        "#main/dup_outputs_decider/bam",
                        "#main/dup_outputs_decider/sqlite"
                    ],
                    "id": "#main/dup_outputs_decider"
                },
                {
                    "run": "#fastq_clean.cwl",
                    "scatter": "#main/fastq_clean_pe/input",
                    "in": [
                        {
                            "source": "#main/readgroup_fastq_pe_file_list",
                            "id": "#main/fastq_clean_pe/input"
                        },
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/fastq_clean_pe/job_uuid"
                        }
                    ],
                    "out": [
                        "#main/fastq_clean_pe/output",
                        "#main/fastq_clean_pe/sqlite"
                    ],
                    "id": "#main/fastq_clean_pe"
                },
                {
                    "run": "#fastq_clean.cwl",
                    "scatter": "#main/fastq_clean_se/input",
                    "in": [
                        {
                            "source": "#main/readgroup_fastq_se_file_list",
                            "id": "#main/fastq_clean_se/input"
                        },
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/fastq_clean_se/job_uuid"
                        }
                    ],
                    "out": [
                        "#main/fastq_clean_se/output",
                        "#main/fastq_clean_se/sqlite"
                    ],
                    "id": "#main/fastq_clean_se"
                },
                {
                    "run": "#gatk4_applybqsr.cwl",
                    "in": [
                        {
                            "source": "#main/gatk_baserecalibrator/output_grp",
                            "id": "#main/gatk_applybqsr/bqsr-recal-file"
                        },
                        {
                            "source": "#main/dup_outputs_decider/bam",
                            "id": "#main/gatk_applybqsr/input"
                        }
                    ],
                    "out": [
                        "#main/gatk_applybqsr/output_bam"
                    ],
                    "id": "#main/gatk_applybqsr"
                },
                {
                    "run": "#gatk4_baserecalibrator.cwl",
                    "in": [
                        {
                            "source": "#main/dup_outputs_decider/bam",
                            "id": "#main/gatk_baserecalibrator/input"
                        },
                        {
                            "source": "#main/known_snp",
                            "id": "#main/gatk_baserecalibrator/known-sites"
                        },
                        {
                            "source": "#main/reference_sequence",
                            "id": "#main/gatk_baserecalibrator/reference"
                        }
                    ],
                    "out": [
                        "#main/gatk_baserecalibrator/output_grp"
                    ],
                    "id": "#main/gatk_baserecalibrator"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/merge_all_sqlite/job_uuid"
                        },
                        {
                            "source": [
                                "#main/merge_sqlite_fastq_clean_pe/destination_sqlite",
                                "#main/merge_sqlite_fastq_clean_se/destination_sqlite",
                                "#main/merge_sqlite_bwa_pe/destination_sqlite",
                                "#main/merge_sqlite_bwa_se/destination_sqlite",
                                "#main/dup_outputs_decider/sqlite",
                                "#main/picard_validatesamfile_bqsr_to_sqlite/sqlite",
                                "#main/metrics/sqlite"
                            ],
                            "valueFrom": "${\n   var res = [];\n   for (var i = 0; i<self.length; i++) {\n     if(self[i] !== null) {\n       res.push(self[i])\n     }\n   }\n   return(res);\n }\n",
                            "id": "#main/merge_all_sqlite/source_sqlite"
                        }
                    ],
                    "out": [
                        "#main/merge_all_sqlite/destination_sqlite",
                        "#main/merge_all_sqlite/log"
                    ],
                    "id": "#main/merge_all_sqlite"
                },
                {
                    "run": "#merge_fastq_array_workflow.cwl",
                    "in": [
                        {
                            "source": "#main/readgroups_bam_to_readgroups_fastq_lists/o1_file_list",
                            "id": "#main/merge_fastq_arrays/bam_o1_fastqs"
                        },
                        {
                            "source": "#main/readgroups_bam_to_readgroups_fastq_lists/o2_file_list",
                            "id": "#main/merge_fastq_arrays/bam_o2_fastqs"
                        },
                        {
                            "source": "#main/readgroups_bam_to_readgroups_fastq_lists/pe_file_list",
                            "id": "#main/merge_fastq_arrays/bam_pe_fastqs"
                        },
                        {
                            "source": "#main/readgroups_bam_to_readgroups_fastq_lists/se_file_list",
                            "id": "#main/merge_fastq_arrays/bam_se_fastqs"
                        },
                        {
                            "source": "#main/fastq_clean_pe/output",
                            "id": "#main/merge_fastq_arrays/fastqs_pe"
                        },
                        {
                            "source": "#main/fastq_clean_se/output",
                            "id": "#main/merge_fastq_arrays/fastqs_se"
                        }
                    ],
                    "out": [
                        "#main/merge_fastq_arrays/merged_pe_fastq_array",
                        "#main/merge_fastq_arrays/merged_se_fastq_array"
                    ],
                    "id": "#main/merge_fastq_arrays"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/merge_sqlite_bwa_pe/job_uuid"
                        },
                        {
                            "source": "#main/bwa_pe/sqlite",
                            "id": "#main/merge_sqlite_bwa_pe/source_sqlite"
                        }
                    ],
                    "out": [
                        "#main/merge_sqlite_bwa_pe/destination_sqlite",
                        "#main/merge_sqlite_bwa_pe/log"
                    ],
                    "id": "#main/merge_sqlite_bwa_pe"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/merge_sqlite_bwa_se/job_uuid"
                        },
                        {
                            "source": "#main/bwa_se/sqlite",
                            "id": "#main/merge_sqlite_bwa_se/source_sqlite"
                        }
                    ],
                    "out": [
                        "#main/merge_sqlite_bwa_se/destination_sqlite",
                        "#main/merge_sqlite_bwa_se/log"
                    ],
                    "id": "#main/merge_sqlite_bwa_se"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/merge_sqlite_fastq_clean_pe/job_uuid"
                        },
                        {
                            "source": "#main/fastq_clean_pe/sqlite",
                            "id": "#main/merge_sqlite_fastq_clean_pe/source_sqlite"
                        }
                    ],
                    "out": [
                        "#main/merge_sqlite_fastq_clean_pe/destination_sqlite",
                        "#main/merge_sqlite_fastq_clean_pe/log"
                    ],
                    "id": "#main/merge_sqlite_fastq_clean_pe"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/merge_sqlite_fastq_clean_se/job_uuid"
                        },
                        {
                            "source": "#main/fastq_clean_se/sqlite",
                            "id": "#main/merge_sqlite_fastq_clean_se/source_sqlite"
                        }
                    ],
                    "out": [
                        "#main/merge_sqlite_fastq_clean_se/destination_sqlite",
                        "#main/merge_sqlite_fastq_clean_se/log"
                    ],
                    "id": "#main/merge_sqlite_fastq_clean_se"
                },
                {
                    "run": "#metrics.cwl",
                    "in": [
                        {
                            "source": "#main/amplicon_kit_set_file_list",
                            "id": "#main/metrics/amplicon_kit_set_file_list"
                        },
                        {
                            "source": "#main/gatk_applybqsr/output_bam",
                            "id": "#main/metrics/bam"
                        },
                        {
                            "source": "#main/capture_kit_set_file_list",
                            "id": "#main/metrics/capture_kit_set_file_list"
                        },
                        {
                            "source": "#main/collect_wgs_metrics",
                            "valueFrom": "${\n   if (self) {\n     return([1]);\n   } else {\n     return([]);\n   }\n }\n",
                            "id": "#main/metrics/collect_wgs_metrics"
                        },
                        {
                            "source": "#main/common_biallelic_vcf",
                            "id": "#main/metrics/common_biallelic_vcf"
                        },
                        {
                            "source": "#main/reference_sequence",
                            "id": "#main/metrics/fasta"
                        },
                        {
                            "valueFrom": "gatk_applybqsr_readgroups",
                            "id": "#main/metrics/input_state"
                        },
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/metrics/job_uuid"
                        },
                        {
                            "source": "#main/known_snp",
                            "id": "#main/metrics/known_snp"
                        },
                        {
                            "source": "#main/thread_count",
                            "id": "#main/metrics/thread_count"
                        }
                    ],
                    "out": [
                        "#main/metrics/sqlite"
                    ],
                    "id": "#main/metrics"
                },
                {
                    "run": "#picard_validatesamfile.cwl",
                    "in": [
                        {
                            "source": "#main/gatk_applybqsr/output_bam",
                            "id": "#main/picard_validatesamfile_bqsr/INPUT"
                        },
                        {
                            "valueFrom": "STRICT",
                            "id": "#main/picard_validatesamfile_bqsr/VALIDATION_STRINGENCY"
                        }
                    ],
                    "out": [
                        "#main/picard_validatesamfile_bqsr/OUTPUT"
                    ],
                    "id": "#main/picard_validatesamfile_bqsr"
                },
                {
                    "run": "#picard_validatesamfile_to_sqlite.cwl",
                    "in": [
                        {
                            "source": "#main/gatk_applybqsr/output_bam",
                            "valueFrom": "$(self.basename)",
                            "id": "#main/picard_validatesamfile_bqsr_to_sqlite/bam"
                        },
                        {
                            "valueFrom": "gatk_applybqsr_readgroups",
                            "id": "#main/picard_validatesamfile_bqsr_to_sqlite/input_state"
                        },
                        {
                            "source": "#main/job_uuid",
                            "id": "#main/picard_validatesamfile_bqsr_to_sqlite/job_uuid"
                        },
                        {
                            "source": "#main/picard_validatesamfile_bqsr/OUTPUT",
                            "id": "#main/picard_validatesamfile_bqsr_to_sqlite/metric_path"
                        }
                    ],
                    "out": [
                        "#main/picard_validatesamfile_bqsr_to_sqlite/sqlite"
                    ],
                    "id": "#main/picard_validatesamfile_bqsr_to_sqlite"
                },
                {
                    "run": "#readgroups_bam_to_readgroups_fastq_lists.cwl",
                    "scatter": "#main/readgroups_bam_to_readgroups_fastq_lists/readgroups_bam_file",
                    "in": [
                        {
                            "source": "#main/readgroups_bam_file_list",
                            "id": "#main/readgroups_bam_to_readgroups_fastq_lists/readgroups_bam_file"
                        }
                    ],
                    "out": [
                        "#main/readgroups_bam_to_readgroups_fastq_lists/pe_file_list",
                        "#main/readgroups_bam_to_readgroups_fastq_lists/se_file_list",
                        "#main/readgroups_bam_to_readgroups_fastq_lists/o1_file_list",
                        "#main/readgroups_bam_to_readgroups_fastq_lists/o2_file_list"
                    ],
                    "id": "#main/readgroups_bam_to_readgroups_fastq_lists"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#amplicon_metrics.cwl",
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "SchemaDefRequirement",
                    "types": [
                        {
                            "$import": "#target_kit_schema.yml/amplicon_kit_set_file"
                        },
                        {
                            "$import": "#target_kit_schema.yml/amplicon_kit_set_uuid"
                        },
                        {
                            "$import": "#target_kit_schema.yml/capture_kit_set_file"
                        },
                        {
                            "$import": "#target_kit_schema.yml/capture_kit_set_uuid"
                        }
                    ]
                }
            ],
            "inputs": [
                {
                    "type": "#target_kit_schema.yml/amplicon_kit_set_file",
                    "id": "#amplicon_metrics.cwl/amplicon_kit_set_file"
                },
                {
                    "type": "File",
                    "id": "#amplicon_metrics.cwl/bam"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".fai",
                        ".pac",
                        ".sa",
                        "^.dict"
                    ],
                    "id": "#amplicon_metrics.cwl/fasta"
                },
                {
                    "type": "string",
                    "id": "#amplicon_metrics.cwl/input_state"
                },
                {
                    "type": "string",
                    "id": "#amplicon_metrics.cwl/job_uuid"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputSource": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics_to_sqlite/sqlite",
                    "id": "#amplicon_metrics.cwl/sqlite"
                }
            ],
            "steps": [
                {
                    "run": "#picard_collecttargetedpcrmetrics.cwl",
                    "in": [
                        {
                            "source": "#amplicon_metrics.cwl/amplicon_kit_set_file",
                            "valueFrom": "$(self.amplicon_kit_amplicon_file)",
                            "id": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics/AMPLICON_INTERVALS"
                        },
                        {
                            "source": "#amplicon_metrics.cwl/bam",
                            "id": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics/INPUT"
                        },
                        {
                            "default": [
                                "null",
                                "ALL_READS"
                            ],
                            "id": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics/METRIC_ACCUMULATION_LEVEL"
                        },
                        {
                            "source": "#amplicon_metrics.cwl/bam",
                            "valueFrom": "$(self.basename).pcrmetrics",
                            "id": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics/OUTPUT"
                        },
                        {
                            "source": "#amplicon_metrics.cwl/fasta",
                            "id": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics/REFERENCE_SEQUENCE"
                        },
                        {
                            "source": "#amplicon_metrics.cwl/amplicon_kit_set_file",
                            "valueFrom": "$(self.amplicon_kit_target_file)",
                            "id": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics/TARGET_INTERVALS"
                        }
                    ],
                    "out": [
                        "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics/METRIC_OUTPUT"
                    ],
                    "id": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics"
                },
                {
                    "run": "#picard_collecttargetedpcrmetrics_to_sqlite.cwl",
                    "in": [
                        {
                            "source": "#amplicon_metrics.cwl/bam",
                            "valueFrom": "$(self.basename)",
                            "id": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics_to_sqlite/bam"
                        },
                        {
                            "source": "#amplicon_metrics.cwl/input_state",
                            "id": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics_to_sqlite/input_state"
                        },
                        {
                            "source": "#amplicon_metrics.cwl/job_uuid",
                            "id": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics_to_sqlite/job_uuid"
                        },
                        {
                            "source": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics/METRIC_OUTPUT",
                            "id": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics_to_sqlite/metric_path"
                        }
                    ],
                    "out": [
                        "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics_to_sqlite/log",
                        "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics_to_sqlite/sqlite"
                    ],
                    "id": "#amplicon_metrics.cwl/picard_collecttargetedpcrmetrics_to_sqlite"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#exome_metrics.cwl",
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "SchemaDefRequirement",
                    "types": [
                        {
                            "$import": "#target_kit_schema.yml/amplicon_kit_set_file"
                        },
                        {
                            "$import": "#target_kit_schema.yml/amplicon_kit_set_uuid"
                        },
                        {
                            "$import": "#target_kit_schema.yml/capture_kit_set_file"
                        },
                        {
                            "$import": "#target_kit_schema.yml/capture_kit_set_uuid"
                        }
                    ]
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "id": "#exome_metrics.cwl/bam"
                },
                {
                    "type": "#target_kit_schema.yml/capture_kit_set_file",
                    "id": "#exome_metrics.cwl/capture_kit_set_file"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".fai",
                        ".pac",
                        ".sa",
                        "^.dict"
                    ],
                    "id": "#exome_metrics.cwl/fasta"
                },
                {
                    "type": "string",
                    "id": "#exome_metrics.cwl/input_state"
                },
                {
                    "type": "string",
                    "id": "#exome_metrics.cwl/job_uuid"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputSource": "#exome_metrics.cwl/picard_collecthsmetrics_to_sqlite/sqlite",
                    "id": "#exome_metrics.cwl/sqlite"
                }
            ],
            "steps": [
                {
                    "run": "#picard_collecthsmetrics.cwl",
                    "in": [
                        {
                            "source": "#exome_metrics.cwl/capture_kit_set_file",
                            "valueFrom": "$(self.capture_kit_bait_file)",
                            "id": "#exome_metrics.cwl/picard_collecthsmetrics/BAIT_INTERVALS"
                        },
                        {
                            "source": "#exome_metrics.cwl/bam",
                            "id": "#exome_metrics.cwl/picard_collecthsmetrics/INPUT"
                        },
                        {
                            "default": [
                                "null",
                                "ALL_READS"
                            ],
                            "id": "#exome_metrics.cwl/picard_collecthsmetrics/METRIC_ACCUMULATION_LEVEL"
                        },
                        {
                            "source": "#exome_metrics.cwl/bam",
                            "valueFrom": "$(self.basename).hsmetrics",
                            "id": "#exome_metrics.cwl/picard_collecthsmetrics/OUTPUT"
                        },
                        {
                            "source": "#exome_metrics.cwl/fasta",
                            "id": "#exome_metrics.cwl/picard_collecthsmetrics/REFERENCE_SEQUENCE"
                        },
                        {
                            "source": "#exome_metrics.cwl/capture_kit_set_file",
                            "valueFrom": "$(self.capture_kit_target_file)",
                            "id": "#exome_metrics.cwl/picard_collecthsmetrics/TARGET_INTERVALS"
                        }
                    ],
                    "out": [
                        "#exome_metrics.cwl/picard_collecthsmetrics/METRIC_OUTPUT"
                    ],
                    "id": "#exome_metrics.cwl/picard_collecthsmetrics"
                },
                {
                    "run": "#picard_collecthsmetrics_to_sqlite.cwl",
                    "in": [
                        {
                            "source": "#exome_metrics.cwl/bam",
                            "valueFrom": "$(self.basename)",
                            "id": "#exome_metrics.cwl/picard_collecthsmetrics_to_sqlite/bam"
                        },
                        {
                            "source": "#exome_metrics.cwl/input_state",
                            "id": "#exome_metrics.cwl/picard_collecthsmetrics_to_sqlite/input_state"
                        },
                        {
                            "source": "#exome_metrics.cwl/job_uuid",
                            "id": "#exome_metrics.cwl/picard_collecthsmetrics_to_sqlite/job_uuid"
                        },
                        {
                            "source": "#exome_metrics.cwl/picard_collecthsmetrics/METRIC_OUTPUT",
                            "id": "#exome_metrics.cwl/picard_collecthsmetrics_to_sqlite/metric_path"
                        }
                    ],
                    "out": [
                        "#exome_metrics.cwl/picard_collecthsmetrics_to_sqlite/log",
                        "#exome_metrics.cwl/picard_collecthsmetrics_to_sqlite/sqlite"
                    ],
                    "id": "#exome_metrics.cwl/picard_collecthsmetrics_to_sqlite"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#metrics.cwl",
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "SchemaDefRequirement",
                    "types": [
                        {
                            "$import": "#target_kit_schema.yml/amplicon_kit_set_file"
                        },
                        {
                            "$import": "#target_kit_schema.yml/amplicon_kit_set_uuid"
                        },
                        {
                            "$import": "#target_kit_schema.yml/capture_kit_set_file"
                        },
                        {
                            "$import": "#target_kit_schema.yml/capture_kit_set_uuid"
                        }
                    ]
                },
                {
                    "class": "SubworkflowFeatureRequirement"
                }
            ],
            "inputs": [
                {
                    "type": {
                        "type": "array",
                        "items": "#target_kit_schema.yml/amplicon_kit_set_file"
                    },
                    "id": "#metrics.cwl/amplicon_kit_set_file_list"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "id": "#metrics.cwl/bam"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "#target_kit_schema.yml/capture_kit_set_file"
                    },
                    "id": "#metrics.cwl/capture_kit_set_file_list"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "int"
                    },
                    "id": "#metrics.cwl/collect_wgs_metrics"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".tbi"
                    ],
                    "id": "#metrics.cwl/common_biallelic_vcf"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".fai",
                        ".pac",
                        ".sa",
                        "^.dict"
                    ],
                    "id": "#metrics.cwl/fasta"
                },
                {
                    "type": "string",
                    "id": "#metrics.cwl/input_state"
                },
                {
                    "type": "string",
                    "id": "#metrics.cwl/job_uuid"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".tbi"
                    ],
                    "id": "#metrics.cwl/known_snp"
                },
                {
                    "type": "int",
                    "id": "#metrics.cwl/thread_count"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputSource": "#metrics.cwl/merge_sqlite/destination_sqlite",
                    "id": "#metrics.cwl/sqlite"
                }
            ],
            "steps": [
                {
                    "run": "#amplicon_metrics.cwl",
                    "scatter": "#metrics.cwl/amplicon_metrics/amplicon_kit_set_file",
                    "in": [
                        {
                            "source": "#metrics.cwl/amplicon_kit_set_file_list",
                            "id": "#metrics.cwl/amplicon_metrics/amplicon_kit_set_file"
                        },
                        {
                            "source": "#metrics.cwl/bam",
                            "id": "#metrics.cwl/amplicon_metrics/bam"
                        },
                        {
                            "source": "#metrics.cwl/fasta",
                            "id": "#metrics.cwl/amplicon_metrics/fasta"
                        },
                        {
                            "source": "#metrics.cwl/input_state",
                            "id": "#metrics.cwl/amplicon_metrics/input_state"
                        },
                        {
                            "source": "#metrics.cwl/job_uuid",
                            "id": "#metrics.cwl/amplicon_metrics/job_uuid"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/amplicon_metrics/sqlite"
                    ],
                    "id": "#metrics.cwl/amplicon_metrics"
                },
                {
                    "run": "#exome_metrics.cwl",
                    "scatter": "#metrics.cwl/exome_metrics/capture_kit_set_file",
                    "in": [
                        {
                            "source": "#metrics.cwl/bam",
                            "id": "#metrics.cwl/exome_metrics/bam"
                        },
                        {
                            "source": "#metrics.cwl/capture_kit_set_file_list",
                            "id": "#metrics.cwl/exome_metrics/capture_kit_set_file"
                        },
                        {
                            "source": "#metrics.cwl/fasta",
                            "id": "#metrics.cwl/exome_metrics/fasta"
                        },
                        {
                            "source": "#metrics.cwl/input_state",
                            "id": "#metrics.cwl/exome_metrics/input_state"
                        },
                        {
                            "source": "#metrics.cwl/job_uuid",
                            "id": "#metrics.cwl/exome_metrics/job_uuid"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/exome_metrics/sqlite"
                    ],
                    "id": "#metrics.cwl/exome_metrics"
                },
                {
                    "run": "#gatk4_calculatecontamination.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/bam",
                            "valueFrom": "$(self.nameroot)",
                            "id": "#metrics.cwl/gatk_calculatecontamination/bam_nameroot"
                        },
                        {
                            "source": "#metrics.cwl/gatk_getpileupsummaries/output",
                            "id": "#metrics.cwl/gatk_calculatecontamination/input"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/gatk_calculatecontamination/output"
                    ],
                    "id": "#metrics.cwl/gatk_calculatecontamination"
                },
                {
                    "run": "#gatk_calculatecontamination_to_sqlite.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/bam",
                            "valueFrom": "$(self.basename)",
                            "id": "#metrics.cwl/gatk_calculatecontamination_to_sqlite/bam"
                        },
                        {
                            "source": "#metrics.cwl/input_state",
                            "id": "#metrics.cwl/gatk_calculatecontamination_to_sqlite/input_state"
                        },
                        {
                            "source": "#metrics.cwl/job_uuid",
                            "id": "#metrics.cwl/gatk_calculatecontamination_to_sqlite/job_uuid"
                        },
                        {
                            "source": "#metrics.cwl/gatk_calculatecontamination/output",
                            "id": "#metrics.cwl/gatk_calculatecontamination_to_sqlite/metric_path"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/gatk_calculatecontamination_to_sqlite/sqlite"
                    ],
                    "id": "#metrics.cwl/gatk_calculatecontamination_to_sqlite"
                },
                {
                    "run": "#gatk4_getpileupsummaries.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/bam",
                            "id": "#metrics.cwl/gatk_getpileupsummaries/input"
                        },
                        {
                            "source": "#metrics.cwl/fasta",
                            "id": "#metrics.cwl/gatk_getpileupsummaries/reference"
                        },
                        {
                            "source": "#metrics.cwl/common_biallelic_vcf",
                            "id": "#metrics.cwl/gatk_getpileupsummaries/variant"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/gatk_getpileupsummaries/output"
                    ],
                    "id": "#metrics.cwl/gatk_getpileupsummaries"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/job_uuid",
                            "id": "#metrics.cwl/merge_amplicon_sqlite/job_uuid"
                        },
                        {
                            "source": "#metrics.cwl/amplicon_metrics/sqlite",
                            "id": "#metrics.cwl/merge_amplicon_sqlite/source_sqlite"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/merge_amplicon_sqlite/destination_sqlite",
                        "#metrics.cwl/merge_amplicon_sqlite/log"
                    ],
                    "id": "#metrics.cwl/merge_amplicon_sqlite"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/job_uuid",
                            "id": "#metrics.cwl/merge_exome_sqlite/job_uuid"
                        },
                        {
                            "source": "#metrics.cwl/exome_metrics/sqlite",
                            "id": "#metrics.cwl/merge_exome_sqlite/source_sqlite"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/merge_exome_sqlite/destination_sqlite",
                        "#metrics.cwl/merge_exome_sqlite/log"
                    ],
                    "id": "#metrics.cwl/merge_exome_sqlite"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/job_uuid",
                            "id": "#metrics.cwl/merge_sqlite/job_uuid"
                        },
                        {
                            "source": [
                                "#metrics.cwl/gatk_calculatecontamination_to_sqlite/sqlite",
                                "#metrics.cwl/merge_exome_sqlite/destination_sqlite",
                                "#metrics.cwl/merge_amplicon_sqlite/destination_sqlite",
                                "#metrics.cwl/merge_wgs_sqlite/destination_sqlite",
                                "#metrics.cwl/picard_collectoxogmetrics_to_sqlite/sqlite",
                                "#metrics.cwl/samtools_flagstat_to_sqlite/sqlite",
                                "#metrics.cwl/samtools_idxstats_to_sqlite/sqlite",
                                "#metrics.cwl/samtools_stats_to_sqlite/sqlite"
                            ],
                            "id": "#metrics.cwl/merge_sqlite/source_sqlite"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/merge_sqlite/destination_sqlite",
                        "#metrics.cwl/merge_sqlite/log"
                    ],
                    "id": "#metrics.cwl/merge_sqlite"
                },
                {
                    "run": "#merge_sqlite.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/job_uuid",
                            "id": "#metrics.cwl/merge_wgs_sqlite/job_uuid"
                        },
                        {
                            "source": "#metrics.cwl/wgs_metrics/sqlite",
                            "id": "#metrics.cwl/merge_wgs_sqlite/source_sqlite"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/merge_wgs_sqlite/destination_sqlite",
                        "#metrics.cwl/merge_wgs_sqlite/log"
                    ],
                    "id": "#metrics.cwl/merge_wgs_sqlite"
                },
                {
                    "run": "#picard_collectoxogmetrics.cwl",
                    "in": [
                        {
                            "default": [
                                "CCG"
                            ],
                            "id": "#metrics.cwl/picard_collectoxogmetrics/CONTEXTS"
                        },
                        {
                            "source": "#metrics.cwl/known_snp",
                            "id": "#metrics.cwl/picard_collectoxogmetrics/DB_SNP"
                        },
                        {
                            "source": "#metrics.cwl/bam",
                            "id": "#metrics.cwl/picard_collectoxogmetrics/INPUT"
                        },
                        {
                            "source": "#metrics.cwl/fasta",
                            "id": "#metrics.cwl/picard_collectoxogmetrics/REFERENCE_SEQUENCE"
                        },
                        {
                            "default": "SILENT",
                            "id": "#metrics.cwl/picard_collectoxogmetrics/VALIDATION_STRINGENCY"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/picard_collectoxogmetrics/OUTPUT"
                    ],
                    "id": "#metrics.cwl/picard_collectoxogmetrics"
                },
                {
                    "run": "#picard_collectoxogmetrics_to_sqlite.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/bam",
                            "valueFrom": "$(self.basename)",
                            "id": "#metrics.cwl/picard_collectoxogmetrics_to_sqlite/bam"
                        },
                        {
                            "source": "#metrics.cwl/fasta",
                            "valueFrom": "$(self.basename)",
                            "id": "#metrics.cwl/picard_collectoxogmetrics_to_sqlite/fasta"
                        },
                        {
                            "source": "#metrics.cwl/input_state",
                            "id": "#metrics.cwl/picard_collectoxogmetrics_to_sqlite/input_state"
                        },
                        {
                            "source": "#metrics.cwl/job_uuid",
                            "id": "#metrics.cwl/picard_collectoxogmetrics_to_sqlite/job_uuid"
                        },
                        {
                            "source": "#metrics.cwl/picard_collectoxogmetrics/OUTPUT",
                            "id": "#metrics.cwl/picard_collectoxogmetrics_to_sqlite/metric_path"
                        },
                        {
                            "source": "#metrics.cwl/known_snp",
                            "valueFrom": "$(self.basename)",
                            "id": "#metrics.cwl/picard_collectoxogmetrics_to_sqlite/vcf"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/picard_collectoxogmetrics_to_sqlite/log",
                        "#metrics.cwl/picard_collectoxogmetrics_to_sqlite/sqlite"
                    ],
                    "id": "#metrics.cwl/picard_collectoxogmetrics_to_sqlite"
                },
                {
                    "run": "#samtools_flagstat.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/bam",
                            "id": "#metrics.cwl/samtools_flagstat/INPUT"
                        },
                        {
                            "source": "#metrics.cwl/thread_count",
                            "id": "#metrics.cwl/samtools_flagstat/threads"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/samtools_flagstat/OUTPUT"
                    ],
                    "id": "#metrics.cwl/samtools_flagstat"
                },
                {
                    "run": "#samtools_flagstat_to_sqlite.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/bam",
                            "valueFrom": "$(self.basename)",
                            "id": "#metrics.cwl/samtools_flagstat_to_sqlite/bam"
                        },
                        {
                            "source": "#metrics.cwl/input_state",
                            "id": "#metrics.cwl/samtools_flagstat_to_sqlite/input_state"
                        },
                        {
                            "source": "#metrics.cwl/job_uuid",
                            "id": "#metrics.cwl/samtools_flagstat_to_sqlite/job_uuid"
                        },
                        {
                            "source": "#metrics.cwl/samtools_flagstat/OUTPUT",
                            "id": "#metrics.cwl/samtools_flagstat_to_sqlite/metric_path"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/samtools_flagstat_to_sqlite/sqlite"
                    ],
                    "id": "#metrics.cwl/samtools_flagstat_to_sqlite"
                },
                {
                    "run": "#samtools_idxstats.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/bam",
                            "id": "#metrics.cwl/samtools_idxstats/INPUT"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/samtools_idxstats/OUTPUT"
                    ],
                    "id": "#metrics.cwl/samtools_idxstats"
                },
                {
                    "run": "#samtools_idxstats_to_sqlite.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/bam",
                            "valueFrom": "$(self.basename)",
                            "id": "#metrics.cwl/samtools_idxstats_to_sqlite/bam"
                        },
                        {
                            "source": "#metrics.cwl/input_state",
                            "id": "#metrics.cwl/samtools_idxstats_to_sqlite/input_state"
                        },
                        {
                            "source": "#metrics.cwl/job_uuid",
                            "id": "#metrics.cwl/samtools_idxstats_to_sqlite/job_uuid"
                        },
                        {
                            "source": "#metrics.cwl/samtools_idxstats/OUTPUT",
                            "id": "#metrics.cwl/samtools_idxstats_to_sqlite/metric_path"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/samtools_idxstats_to_sqlite/sqlite"
                    ],
                    "id": "#metrics.cwl/samtools_idxstats_to_sqlite"
                },
                {
                    "run": "#samtools_stats.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/bam",
                            "id": "#metrics.cwl/samtools_stats/INPUT"
                        },
                        {
                            "source": "#metrics.cwl/thread_count",
                            "id": "#metrics.cwl/samtools_stats/threads"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/samtools_stats/OUTPUT"
                    ],
                    "id": "#metrics.cwl/samtools_stats"
                },
                {
                    "run": "#samtools_stats_to_sqlite.cwl",
                    "in": [
                        {
                            "source": "#metrics.cwl/bam",
                            "valueFrom": "$(self.basename)",
                            "id": "#metrics.cwl/samtools_stats_to_sqlite/bam"
                        },
                        {
                            "source": "#metrics.cwl/input_state",
                            "id": "#metrics.cwl/samtools_stats_to_sqlite/input_state"
                        },
                        {
                            "source": "#metrics.cwl/job_uuid",
                            "id": "#metrics.cwl/samtools_stats_to_sqlite/job_uuid"
                        },
                        {
                            "source": "#metrics.cwl/samtools_stats/OUTPUT",
                            "id": "#metrics.cwl/samtools_stats_to_sqlite/metric_path"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/samtools_stats_to_sqlite/sqlite"
                    ],
                    "id": "#metrics.cwl/samtools_stats_to_sqlite"
                },
                {
                    "run": "#wgs_metrics.cwl",
                    "scatter": "#metrics.cwl/wgs_metrics/run_wgs",
                    "in": [
                        {
                            "source": "#metrics.cwl/bam",
                            "id": "#metrics.cwl/wgs_metrics/bam"
                        },
                        {
                            "source": "#metrics.cwl/fasta",
                            "id": "#metrics.cwl/wgs_metrics/fasta"
                        },
                        {
                            "source": "#metrics.cwl/input_state",
                            "id": "#metrics.cwl/wgs_metrics/input_state"
                        },
                        {
                            "source": "#metrics.cwl/job_uuid",
                            "id": "#metrics.cwl/wgs_metrics/job_uuid"
                        },
                        {
                            "source": "#metrics.cwl/collect_wgs_metrics",
                            "id": "#metrics.cwl/wgs_metrics/run_wgs"
                        }
                    ],
                    "out": [
                        "#metrics.cwl/wgs_metrics/sqlite"
                    ],
                    "id": "#metrics.cwl/wgs_metrics"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#wgs_metrics.cwl",
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "id": "#wgs_metrics.cwl/bam"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".fai",
                        ".pac",
                        ".sa",
                        "^.dict"
                    ],
                    "id": "#wgs_metrics.cwl/fasta"
                },
                {
                    "type": "string",
                    "id": "#wgs_metrics.cwl/input_state"
                },
                {
                    "type": "string",
                    "id": "#wgs_metrics.cwl/job_uuid"
                },
                {
                    "type": "int",
                    "id": "#wgs_metrics.cwl/run_wgs"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputSource": "#wgs_metrics.cwl/picard_collectwgsmetrics_to_sqlite/sqlite",
                    "id": "#wgs_metrics.cwl/sqlite"
                }
            ],
            "steps": [
                {
                    "run": "#picard_collectwgsmetrics.cwl",
                    "in": [
                        {
                            "source": "#wgs_metrics.cwl/bam",
                            "id": "#wgs_metrics.cwl/picard_collectwgsmetrics/INPUT"
                        },
                        {
                            "source": "#wgs_metrics.cwl/fasta",
                            "id": "#wgs_metrics.cwl/picard_collectwgsmetrics/REFERENCE_SEQUENCE"
                        },
                        {
                            "default": "SILENT",
                            "id": "#wgs_metrics.cwl/picard_collectwgsmetrics/VALIDATION_STRINGENCY"
                        }
                    ],
                    "out": [
                        "#wgs_metrics.cwl/picard_collectwgsmetrics/OUTPUT"
                    ],
                    "id": "#wgs_metrics.cwl/picard_collectwgsmetrics"
                },
                {
                    "run": "#picard_collectwgsmetrics_to_sqlite.cwl",
                    "in": [
                        {
                            "source": "#wgs_metrics.cwl/bam",
                            "valueFrom": "$(self.basename)",
                            "id": "#wgs_metrics.cwl/picard_collectwgsmetrics_to_sqlite/bam"
                        },
                        {
                            "source": "#wgs_metrics.cwl/fasta",
                            "valueFrom": "$(self.basename)",
                            "id": "#wgs_metrics.cwl/picard_collectwgsmetrics_to_sqlite/fasta"
                        },
                        {
                            "source": "#wgs_metrics.cwl/input_state",
                            "id": "#wgs_metrics.cwl/picard_collectwgsmetrics_to_sqlite/input_state"
                        },
                        {
                            "source": "#wgs_metrics.cwl/job_uuid",
                            "id": "#wgs_metrics.cwl/picard_collectwgsmetrics_to_sqlite/job_uuid"
                        },
                        {
                            "source": "#wgs_metrics.cwl/picard_collectwgsmetrics/OUTPUT",
                            "id": "#wgs_metrics.cwl/picard_collectwgsmetrics_to_sqlite/metric_path"
                        }
                    ],
                    "out": [
                        "#wgs_metrics.cwl/picard_collectwgsmetrics_to_sqlite/log",
                        "#wgs_metrics.cwl/picard_collectwgsmetrics_to_sqlite/sqlite"
                    ],
                    "id": "#wgs_metrics.cwl/picard_collectwgsmetrics_to_sqlite"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#conditional_markduplicates.cwl",
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "inputs": [
                {
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "id": "#conditional_markduplicates.cwl/bam"
                },
                {
                    "type": "string",
                    "id": "#conditional_markduplicates.cwl/bam_name"
                },
                {
                    "type": "string",
                    "id": "#conditional_markduplicates.cwl/job_uuid"
                },
                {
                    "type": "int",
                    "id": "#conditional_markduplicates.cwl/run_markduplicates"
                },
                {
                    "type": "int",
                    "id": "#conditional_markduplicates.cwl/thread_count"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputSource": "#conditional_markduplicates.cwl/index_markdup_bam/output_bam",
                    "id": "#conditional_markduplicates.cwl/output"
                },
                {
                    "type": "File",
                    "outputSource": "#conditional_markduplicates.cwl/picard_markduplicates_to_sqlite/sqlite",
                    "id": "#conditional_markduplicates.cwl/sqlite"
                }
            ],
            "steps": [
                {
                    "run": "#samtools_index.cwl",
                    "in": [
                        {
                            "source": "#conditional_markduplicates.cwl/sort_markdup_bam/bam",
                            "id": "#conditional_markduplicates.cwl/index_markdup_bam/input_bam"
                        },
                        {
                            "source": "#conditional_markduplicates.cwl/thread_count",
                            "id": "#conditional_markduplicates.cwl/index_markdup_bam/threads"
                        }
                    ],
                    "out": [
                        "#conditional_markduplicates.cwl/index_markdup_bam/output_bam"
                    ],
                    "id": "#conditional_markduplicates.cwl/index_markdup_bam"
                },
                {
                    "run": "#picard_markduplicates.cwl",
                    "in": [
                        {
                            "default": "queryname",
                            "id": "#conditional_markduplicates.cwl/picard_markduplicates/ASSUME_SORT_ORDER"
                        },
                        {
                            "source": "#conditional_markduplicates.cwl/bam",
                            "id": "#conditional_markduplicates.cwl/picard_markduplicates/INPUT"
                        },
                        {
                            "source": "#conditional_markduplicates.cwl/bam_name",
                            "id": "#conditional_markduplicates.cwl/picard_markduplicates/OUTBAM"
                        },
                        {
                            "default": "SILENT",
                            "id": "#conditional_markduplicates.cwl/picard_markduplicates/VALIDATION_STRINGENCY"
                        }
                    ],
                    "out": [
                        "#conditional_markduplicates.cwl/picard_markduplicates/OUTPUT",
                        "#conditional_markduplicates.cwl/picard_markduplicates/METRICS"
                    ],
                    "id": "#conditional_markduplicates.cwl/picard_markduplicates"
                },
                {
                    "run": "#picard_markduplicates_to_sqlite.cwl",
                    "in": [
                        {
                            "source": "#conditional_markduplicates.cwl/bam_name",
                            "id": "#conditional_markduplicates.cwl/picard_markduplicates_to_sqlite/bam"
                        },
                        {
                            "valueFrom": "markduplicates_readgroups",
                            "id": "#conditional_markduplicates.cwl/picard_markduplicates_to_sqlite/input_state"
                        },
                        {
                            "source": "#conditional_markduplicates.cwl/job_uuid",
                            "id": "#conditional_markduplicates.cwl/picard_markduplicates_to_sqlite/job_uuid"
                        },
                        {
                            "source": "#conditional_markduplicates.cwl/picard_markduplicates/METRICS",
                            "id": "#conditional_markduplicates.cwl/picard_markduplicates_to_sqlite/metric_path"
                        }
                    ],
                    "out": [
                        "#conditional_markduplicates.cwl/picard_markduplicates_to_sqlite/sqlite"
                    ],
                    "id": "#conditional_markduplicates.cwl/picard_markduplicates_to_sqlite"
                },
                {
                    "run": "#samtools_sort.cwl",
                    "in": [
                        {
                            "source": "#conditional_markduplicates.cwl/picard_markduplicates/OUTPUT",
                            "id": "#conditional_markduplicates.cwl/sort_markdup_bam/input_bam"
                        },
                        {
                            "source": "#conditional_markduplicates.cwl/bam_name",
                            "id": "#conditional_markduplicates.cwl/sort_markdup_bam/output_bam"
                        },
                        {
                            "source": "#conditional_markduplicates.cwl/thread_count",
                            "id": "#conditional_markduplicates.cwl/sort_markdup_bam/threads"
                        }
                    ],
                    "out": [
                        "#conditional_markduplicates.cwl/sort_markdup_bam/bam"
                    ],
                    "id": "#conditional_markduplicates.cwl/sort_markdup_bam"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#conditional_skip_markduplicates.cwl",
            "inputs": [
                {
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "id": "#conditional_skip_markduplicates.cwl/bam"
                },
                {
                    "type": "string",
                    "id": "#conditional_skip_markduplicates.cwl/bam_name"
                },
                {
                    "type": "string",
                    "id": "#conditional_skip_markduplicates.cwl/job_uuid"
                },
                {
                    "type": "int",
                    "id": "#conditional_skip_markduplicates.cwl/skip_markduplicates"
                },
                {
                    "type": "int",
                    "id": "#conditional_skip_markduplicates.cwl/thread_count"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputSource": "#conditional_skip_markduplicates.cwl/picard_mergesamfiles/MERGED_OUTPUT",
                    "id": "#conditional_skip_markduplicates.cwl/output"
                }
            ],
            "steps": [
                {
                    "run": "#picard_mergesamfiles.cwl",
                    "in": [
                        {
                            "source": "#conditional_skip_markduplicates.cwl/bam",
                            "id": "#conditional_skip_markduplicates.cwl/picard_mergesamfiles/INPUT"
                        },
                        {
                            "source": "#conditional_skip_markduplicates.cwl/bam_name",
                            "id": "#conditional_skip_markduplicates.cwl/picard_mergesamfiles/OUTPUT"
                        },
                        {
                            "default": "SILENT",
                            "id": "#conditional_skip_markduplicates.cwl/picard_mergesamfiles/VALIDATION_STRINGENCY"
                        }
                    ],
                    "out": [
                        "#conditional_skip_markduplicates.cwl/picard_mergesamfiles/MERGED_OUTPUT"
                    ],
                    "id": "#conditional_skip_markduplicates.cwl/picard_mergesamfiles"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#fastq_clean.cwl",
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "ScatterFeatureRequirement"
                },
                {
                    "class": "StepInputExpressionRequirement"
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
                }
            ],
            "inputs": [
                {
                    "type": "#readgroup.yml/readgroup_fastq_file",
                    "id": "#fastq_clean.cwl/input"
                },
                {
                    "type": "string",
                    "id": "#fastq_clean.cwl/job_uuid"
                }
            ],
            "outputs": [
                {
                    "type": "#readgroup.yml/readgroup_fastq_file",
                    "outputSource": "#fastq_clean.cwl/emit_readgroup_fastq_file/output",
                    "id": "#fastq_clean.cwl/output"
                },
                {
                    "type": "File",
                    "outputSource": "#fastq_clean.cwl/json_to_sqlite/sqlite",
                    "id": "#fastq_clean.cwl/sqlite"
                }
            ],
            "steps": [
                {
                    "run": "#emit_readgroup_fastq_file.cwl",
                    "in": [
                        {
                            "source": "#fastq_clean.cwl/fastq_cleaner/cleaned_fastq1",
                            "id": "#fastq_clean.cwl/emit_readgroup_fastq_file/forward_fastq"
                        },
                        {
                            "source": "#fastq_clean.cwl/input",
                            "valueFrom": "$(self.readgroup_meta)",
                            "id": "#fastq_clean.cwl/emit_readgroup_fastq_file/readgroup_meta"
                        },
                        {
                            "source": "#fastq_clean.cwl/fastq_cleaner/cleaned_fastq2",
                            "id": "#fastq_clean.cwl/emit_readgroup_fastq_file/reverse_fastq"
                        }
                    ],
                    "out": [
                        "#fastq_clean.cwl/emit_readgroup_fastq_file/output"
                    ],
                    "id": "#fastq_clean.cwl/emit_readgroup_fastq_file"
                },
                {
                    "run": "#fastq_cleaner.cwl",
                    "in": [
                        {
                            "source": "#fastq_clean.cwl/input",
                            "valueFrom": "$(self.forward_fastq)",
                            "id": "#fastq_clean.cwl/fastq_cleaner/fastq1"
                        },
                        {
                            "source": "#fastq_clean.cwl/input",
                            "valueFrom": "$(self.reverse_fastq)",
                            "id": "#fastq_clean.cwl/fastq_cleaner/fastq2"
                        }
                    ],
                    "out": [
                        "#fastq_clean.cwl/fastq_cleaner/cleaned_fastq1",
                        "#fastq_clean.cwl/fastq_cleaner/cleaned_fastq2",
                        "#fastq_clean.cwl/fastq_cleaner/result_json"
                    ],
                    "id": "#fastq_clean.cwl/fastq_cleaner"
                },
                {
                    "run": "#json_to_sqlite.cwl",
                    "in": [
                        {
                            "source": "#fastq_clean.cwl/fastq_cleaner/result_json",
                            "id": "#fastq_clean.cwl/json_to_sqlite/input_json"
                        },
                        {
                            "source": "#fastq_clean.cwl/job_uuid",
                            "id": "#fastq_clean.cwl/json_to_sqlite/job_uuid"
                        },
                        {
                            "source": "#fastq_clean.cwl/input",
                            "valueFrom": "${\n   var res = self.reverse_fastq === null ? \"fastq_cleaner_se\" : \"fastq_cleaner_pe\";\n   return(res);\n }\n",
                            "id": "#fastq_clean.cwl/json_to_sqlite/table_name"
                        }
                    ],
                    "out": [
                        "#fastq_clean.cwl/json_to_sqlite/sqlite",
                        "#fastq_clean.cwl/json_to_sqlite/log"
                    ],
                    "id": "#fastq_clean.cwl/json_to_sqlite"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#merge_fastq_array_workflow.cwl",
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "MultipleInputFeatureRequirement"
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
                    "class": "StepInputExpressionRequirement"
                }
            ],
            "inputs": [
                {
                    "type": {
                        "type": "array",
                        "items": {
                            "type": "array",
                            "items": "#readgroup.yml/readgroup_fastq_file"
                        }
                    },
                    "id": "#merge_fastq_array_workflow.cwl/bam_o1_fastqs"
                },
                {
                    "type": {
                        "type": "array",
                        "items": {
                            "type": "array",
                            "items": "#readgroup.yml/readgroup_fastq_file"
                        }
                    },
                    "id": "#merge_fastq_array_workflow.cwl/bam_o2_fastqs"
                },
                {
                    "type": {
                        "type": "array",
                        "items": {
                            "type": "array",
                            "items": "#readgroup.yml/readgroup_fastq_file"
                        }
                    },
                    "id": "#merge_fastq_array_workflow.cwl/bam_pe_fastqs"
                },
                {
                    "type": {
                        "type": "array",
                        "items": {
                            "type": "array",
                            "items": "#readgroup.yml/readgroup_fastq_file"
                        }
                    },
                    "id": "#merge_fastq_array_workflow.cwl/bam_se_fastqs"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_fastq_file"
                    },
                    "id": "#merge_fastq_array_workflow.cwl/fastqs_pe"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_fastq_file"
                    },
                    "id": "#merge_fastq_array_workflow.cwl/fastqs_se"
                }
            ],
            "outputs": [
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_fastq_file"
                    },
                    "outputSource": "#merge_fastq_array_workflow.cwl/merge_pe_fastq_records/output",
                    "id": "#merge_fastq_array_workflow.cwl/merged_pe_fastq_array"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_fastq_file"
                    },
                    "outputSource": "#merge_fastq_array_workflow.cwl/merge_all_se_fastq_records/output",
                    "id": "#merge_fastq_array_workflow.cwl/merged_se_fastq_array"
                }
            ],
            "steps": [
                {
                    "run": "#merge_fastq_records.cwl",
                    "in": [
                        {
                            "source": [
                                "#merge_fastq_array_workflow.cwl/merge_bam_se_fastq_records/output",
                                "#merge_fastq_array_workflow.cwl/merge_bam_o1_fastq_records/output",
                                "#merge_fastq_array_workflow.cwl/merge_bam_o2_fastq_records/output",
                                "#merge_fastq_array_workflow.cwl/fastqs_se"
                            ],
                            "id": "#merge_fastq_array_workflow.cwl/merge_all_se_fastq_records/input"
                        }
                    ],
                    "out": [
                        "#merge_fastq_array_workflow.cwl/merge_all_se_fastq_records/output"
                    ],
                    "id": "#merge_fastq_array_workflow.cwl/merge_all_se_fastq_records"
                },
                {
                    "run": "#merge_fastq_records.cwl",
                    "in": [
                        {
                            "source": "#merge_fastq_array_workflow.cwl/bam_o1_fastqs",
                            "id": "#merge_fastq_array_workflow.cwl/merge_bam_o1_fastq_records/input"
                        }
                    ],
                    "out": [
                        "#merge_fastq_array_workflow.cwl/merge_bam_o1_fastq_records/output"
                    ],
                    "id": "#merge_fastq_array_workflow.cwl/merge_bam_o1_fastq_records"
                },
                {
                    "run": "#merge_fastq_records.cwl",
                    "in": [
                        {
                            "source": "#merge_fastq_array_workflow.cwl/bam_o2_fastqs",
                            "id": "#merge_fastq_array_workflow.cwl/merge_bam_o2_fastq_records/input"
                        }
                    ],
                    "out": [
                        "#merge_fastq_array_workflow.cwl/merge_bam_o2_fastq_records/output"
                    ],
                    "id": "#merge_fastq_array_workflow.cwl/merge_bam_o2_fastq_records"
                },
                {
                    "run": "#merge_fastq_records.cwl",
                    "in": [
                        {
                            "source": "#merge_fastq_array_workflow.cwl/bam_pe_fastqs",
                            "id": "#merge_fastq_array_workflow.cwl/merge_bam_pe_fastq_records/input"
                        }
                    ],
                    "out": [
                        "#merge_fastq_array_workflow.cwl/merge_bam_pe_fastq_records/output"
                    ],
                    "id": "#merge_fastq_array_workflow.cwl/merge_bam_pe_fastq_records"
                },
                {
                    "run": "#merge_fastq_records.cwl",
                    "in": [
                        {
                            "source": "#merge_fastq_array_workflow.cwl/bam_se_fastqs",
                            "id": "#merge_fastq_array_workflow.cwl/merge_bam_se_fastq_records/input"
                        }
                    ],
                    "out": [
                        "#merge_fastq_array_workflow.cwl/merge_bam_se_fastq_records/output"
                    ],
                    "id": "#merge_fastq_array_workflow.cwl/merge_bam_se_fastq_records"
                },
                {
                    "run": "#merge_fastq_records.cwl",
                    "in": [
                        {
                            "source": [
                                "#merge_fastq_array_workflow.cwl/merge_bam_pe_fastq_records/output",
                                "#merge_fastq_array_workflow.cwl/fastqs_pe"
                            ],
                            "id": "#merge_fastq_array_workflow.cwl/merge_pe_fastq_records/input"
                        }
                    ],
                    "out": [
                        "#merge_fastq_array_workflow.cwl/merge_pe_fastq_records/output"
                    ],
                    "id": "#merge_fastq_array_workflow.cwl/merge_pe_fastq_records"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl",
            "requirements": [
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
                    "class": "StepInputExpressionRequirement"
                }
            ],
            "inputs": [
                {
                    "type": "#readgroup.yml/readgroups_bam_file",
                    "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/readgroups_bam_file"
                }
            ],
            "outputs": [
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_fastq_file"
                    },
                    "outputSource": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o1_contents/output",
                    "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/o1_file_list"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_fastq_file"
                    },
                    "outputSource": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o2_contents/output",
                    "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/o2_file_list"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_fastq_file"
                    },
                    "outputSource": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_pe_contents/output",
                    "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/pe_file_list"
                },
                {
                    "type": {
                        "type": "array",
                        "items": "#readgroup.yml/readgroup_fastq_file"
                    },
                    "outputSource": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_se_contents/output",
                    "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/se_file_list"
                }
            ],
            "steps": [
                {
                    "run": "#bam_readgroup_to_contents.cwl",
                    "in": [
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/readgroups_bam_file",
                            "valueFrom": "$(self.bam)",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/bam_readgroup_to_contents/INPUT"
                        },
                        {
                            "valueFrom": "lenient",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/bam_readgroup_to_contents/MODE"
                        }
                    ],
                    "out": [
                        "#readgroups_bam_to_readgroups_fastq_lists.cwl/bam_readgroup_to_contents/OUTPUT"
                    ],
                    "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/bam_readgroup_to_contents"
                },
                {
                    "run": "#biobambam2_bamtofastq.cwl",
                    "in": [
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/readgroups_bam_file",
                            "valueFrom": "$(self.bam)",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/biobambam_bamtofastq/filename"
                        }
                    ],
                    "out": [
                        "#readgroups_bam_to_readgroups_fastq_lists.cwl/biobambam_bamtofastq/output_fastq1",
                        "#readgroups_bam_to_readgroups_fastq_lists.cwl/biobambam_bamtofastq/output_fastq2",
                        "#readgroups_bam_to_readgroups_fastq_lists.cwl/biobambam_bamtofastq/output_fastq_o1",
                        "#readgroups_bam_to_readgroups_fastq_lists.cwl/biobambam_bamtofastq/output_fastq_o2",
                        "#readgroups_bam_to_readgroups_fastq_lists.cwl/biobambam_bamtofastq/output_fastq_s"
                    ],
                    "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/biobambam_bamtofastq"
                },
                {
                    "run": "#emit_matched_fastq_readgroups.cwl",
                    "in": [
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/bam_readgroup_to_contents/OUTPUT",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o1_contents/bam_readgroup_contents"
                        },
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/biobambam_bamtofastq/output_fastq_o1",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o1_contents/forward_fastq_list"
                        },
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/readgroups_bam_file",
                            "valueFrom": "$(self.readgroup_meta_list)",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o1_contents/readgroup_meta_list"
                        },
                        {
                            "default": [],
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o1_contents/reverse_fastq_list"
                        }
                    ],
                    "out": [
                        "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o1_contents/output"
                    ],
                    "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o1_contents"
                },
                {
                    "run": "#emit_matched_fastq_readgroups.cwl",
                    "in": [
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/bam_readgroup_to_contents/OUTPUT",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o2_contents/bam_readgroup_contents"
                        },
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/biobambam_bamtofastq/output_fastq_o2",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o2_contents/forward_fastq_list"
                        },
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/readgroups_bam_file",
                            "valueFrom": "$(self.readgroup_meta_list)",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o2_contents/readgroup_meta_list"
                        },
                        {
                            "default": [],
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o2_contents/reverse_fastq_list"
                        }
                    ],
                    "out": [
                        "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o2_contents/output"
                    ],
                    "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_o2_contents"
                },
                {
                    "run": "#emit_matched_fastq_readgroups.cwl",
                    "in": [
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/bam_readgroup_to_contents/OUTPUT",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_pe_contents/bam_readgroup_contents"
                        },
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/biobambam_bamtofastq/output_fastq1",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_pe_contents/forward_fastq_list"
                        },
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/readgroups_bam_file",
                            "valueFrom": "$(self.readgroup_meta_list)",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_pe_contents/readgroup_meta_list"
                        },
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/biobambam_bamtofastq/output_fastq2",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_pe_contents/reverse_fastq_list"
                        }
                    ],
                    "out": [
                        "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_pe_contents/output"
                    ],
                    "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_pe_contents"
                },
                {
                    "run": "#emit_matched_fastq_readgroups.cwl",
                    "in": [
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/bam_readgroup_to_contents/OUTPUT",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_se_contents/bam_readgroup_contents"
                        },
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/biobambam_bamtofastq/output_fastq_s",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_se_contents/forward_fastq_list"
                        },
                        {
                            "source": "#readgroups_bam_to_readgroups_fastq_lists.cwl/readgroups_bam_file",
                            "valueFrom": "$(self.readgroup_meta_list)",
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_se_contents/readgroup_meta_list"
                        },
                        {
                            "default": [],
                            "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_se_contents/reverse_fastq_list"
                        }
                    ],
                    "out": [
                        "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_se_contents/output"
                    ],
                    "id": "#readgroups_bam_to_readgroups_fastq_lists.cwl/emit_readgroup_se_contents"
                }
            ]
        }
    ]
}