# JINJA2 Template.

## Example location directory. 


ll  role_ansible_playbook/role_1/tasks/main.yml

# Jinja2 template file example

cat role_ansible_playbook/role_1/meta/test.j2


Part 1 Simple variable. 

I am adding some varible from variable directory:

Some_variable_test: {{ test_vars }}

Part 2 Some loop.


Ansible template for loop example
{% for i in range(3)%}
  This is the {{ i }}th variable
{% endfor %}


[note] Jinja2 template : example we run loops in shell etc. 


## Running playbooks 

        ansible-playbook -c localhost site.yml
        cat /tmp/test2.j2
        
        
        I am adding some varible from variable directory:

        Some_variable_test: Something_from_var_directory
 
        Ansible template for loop example
        This is the 0th variable
        This is the 1th variable
        This is the 2th variable
        
        


        
