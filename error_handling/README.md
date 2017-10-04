## Demo for how to recover from disasters during playbook running.

Sometimes you need to locate some critical data in temporary directory. And it must gone on finish. But in case an error occured during playbook running, you may be in situation when your previously located assets are not removed.

For such a case you should **enclose dangerous tasks within a block and handle possible errors**.

First I present a bad example with aborting playbook when an expected task never executes. Run the command *ansible-playbook -v ./naive_play.yml*

Then there are 3 demo-cases how to do it right:

1. *cleaning_up_on_error_case_1.yml*. Recovering from an error which causes aborting the entire play (after such an error no other hosts would be processed). Here I forcibly set a flag to abort the play, then use a **block/rescue/always** section, and inside a block I raise a fatal error.

2. *cleaning_up_on_error_case_2.yml*. Recovering from an error which occurs on executing a single task.

3. *cleaning_up_on_error_case_3.yml*. Recovering from fatal error using task handlers. **TODO**: in this case the handler doesn't run even with the *--force-handlers* option, find out why.

How to run with inspection of what's going on:
- ansible-playbook -v ./cleaning_up_on_error_<CASE_N>.yml

Using the *-v* option you will see the path to a temporary directory which Ansible creates, so you could ensure that **there will be no such directory after finish playing**.
