{
    "cwlVersion": "v1.0", 
    "$graph": [
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
                    "coresMax": 1, 
                    "ramMin": 900, 
                    "ramMax": 900, 
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
                    "coresMin": 8, 
                    "coresMax": 8, 
                    "ramMin": 14400, 
                    "ramMax": 14400, 
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
            "class": "Workflow", 
            "id": "#main", 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }
            ], 
            "inputs": [
                {
                    "type": "File", 
                    "id": "#main/bam"
                }, 
                {
                    "type": "string", 
                    "id": "#main/bam_name"
                }, 
                {
                    "type": "string", 
                    "id": "#main/job_uuid"
                }, 
                {
                    "type": "File", 
                    "id": "#main/metrics"
                }, 
                {
                    "type": "int", 
                    "id": "#main/thread_count"
                }
            ], 
            "outputs": [
                {
                    "type": "File", 
                    "outputSource": "#main/index_markdup_bam/output_bam", 
                    "id": "#main/output"
                }, 
                {
                    "type": "File", 
                    "outputSource": "#main/picard_markduplicates_to_sqlite/sqlite", 
                    "id": "#main/sqlite"
                }
            ], 
            "steps": [
                {
                    "run": "#samtools_index.cwl", 
                    "in": [
                        {
                            "source": "#main/bam", 
                            "id": "#main/index_markdup_bam/input_bam"
                        }, 
                        {
                            "source": "#main/thread_count", 
                            "id": "#main/index_markdup_bam/threads"
                        }
                    ], 
                    "out": [
                        "#main/index_markdup_bam/output_bam"
                    ], 
                    "id": "#main/index_markdup_bam"
                }, 
                {
                    "run": "#picard_markduplicates_to_sqlite.cwl", 
                    "in": [
                        {
                            "source": "#main/bam_name", 
                            "id": "#main/picard_markduplicates_to_sqlite/bam"
                        }, 
                        {
                            "valueFrom": "markduplicates_readgroups", 
                            "id": "#main/picard_markduplicates_to_sqlite/input_state"
                        }, 
                        {
                            "source": "#main/job_uuid", 
                            "id": "#main/picard_markduplicates_to_sqlite/job_uuid"
                        }, 
                        {
                            "source": "#main/metrics", 
                            "id": "#main/picard_markduplicates_to_sqlite/metric_path"
                        }
                    ], 
                    "out": [
                        "#main/picard_markduplicates_to_sqlite/sqlite"
                    ], 
                    "id": "#main/picard_markduplicates_to_sqlite"
                }
            ]
        }
    ]
}