# Introduction to Json.


  register: result
- debug: msg={{ result }}

## Reading json and collecting required information from json file.


Output.



    Output 1 : ( Host ) 192.168.33.4

    {
        "msg": {
            "changed": false,
            "failed": false,
            "stdout": [
                "Hostname: r1\nModel: firefly-perimeter\nJUNOS Software Release [12.1X47-D15.4]"
            ],
            "stdout_lines": [
                [
                    "Hostname: r1",
                    "Model: firefly-perimeter",
                    "JUNOS Software Release [12.1X47-D15.4]"
                ]
            ]
        }
    }


Output 2 : ( Host ) 192.168.33.5 

    {
        "msg": {
            "changed": false,
            "failed": false,
            "stdout": [
                "Hostname: r2\nModel: firefly-perimeter\nJUNOS Software Release [12.1X47-D15.4]"
            ],
            "stdout_lines": [
                [
                    "Hostname: r2",
                    "Model: firefly-perimeter",
                    "JUNOS Software Release [12.1X47-D15.4]"
                ]
            ]
        }
    }



## Register targeting a specific result and creating variable or recording results as a report.

     - debug: msg={{ result.stdout_lines[0][0] }}

      results
        Hostname: r1
        Hostname: r2

  
## Register targetting a specific result 

    - debug: msg={{ result.changed }}
      result
         false 
         false
