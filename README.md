## POC AASM

POC to studying possibilities to state management using AASM.

### Getting starting

**Pre install**

- Ruby 3.x

**Install dependecies**

```bash
bundle install
```

**Running project**

```bash
make start
```

**Output**

```bash
ruby app/main.rb
Contract created?: true in 2023-05-15 11:48:49 -0300
Contract signed?: false in
Contract canceled?: false in
changing from created to signed (event: to_sign)
Contract created?: false in 2023-05-15 11:48:49 -0300
Contract signed?: true in 2023-05-15 11:48:49 -0300
Contract canceled?: false in
Contract signed?: xpto
changing from signed to canceled (event: to_cancel)
Send email to: XPTO
Do another thinks
Contract created?: false in 2023-05-15 11:48:49 -0300
Contract signed?: false in 2023-05-15 11:48:49 -0300
Contract canceled?: true in 2023-05-15 11:48:49 -0300
changing from created to canceled (event: to_cancel)
Send email to: XPTO 2
Do another thinks
Contract canceled? true in 2023-05-15 11:48:49 -0300 because Fraud Cancel Motivation
```
