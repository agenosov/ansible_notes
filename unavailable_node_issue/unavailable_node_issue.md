* When strategy is **not serial**, first of all facts gathering from all hosts is performed. So unavailable host just become marked us unreachable. Playbook continues.

* For the case of **serial strategy**, attempt to gather facts from unreachable host leads to **termination of playbook**.

While it makes sense for some cases, there're also situations when such behaviour is absolutely unexpectable.

I offer to introduce the option [break_play_on_batch_failed](https://github.com/ansible/ansible/pull/40271) to allow control whether to interrupt the entire play in such case.
