# Google Sheet
https://docs.google.com/spreadsheets/d/1YnXmOzDQ9pM9H3S1C0mhhm8Pv3uXedruE-_VNLvlNlY/edit?gid=386120609#gid=386120609

# Work Process
### MatLab
- set fix-step size -> 0.0002
### Sinwave
- Run : 30 sec
- Block Parameter 
    - Amplitude : 65535
    - Frequency : 
        - 0.5 * 2 * PI
        - 1.0 * 2 * PI
        - 1.5 * 2 * PI
        - 2.0 * 2 * PI
        - 2.5 * 2 * PI
  
### Step
- Run : 20 sec
- Block Parameter
    - Step Time : 10
    - Intitial Value : 0
    - Final Value : 
        - 20% * max_PWM
        - 40% * max_PWM
        - 60% * max_PWM
        - 80% * max_PWM
        - 100% * max_PWM
### Ramp
- Run : 20 sec
- Block Parameter  
    - Slope
        - 5% * max_PWM
        - 10% * max_PWM
        - 15% * max_PWM
        - 20% * max_PWM
        - 25% * max_PWM
    - Start Time : 2 Sec

### Stair
- Run : 25 sec
- Block Name : Stair Generator (Because have more type)
- Block Parameter :
    - Time : [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20]
    - Amplitude : [0 0.1 0 0.2 0 0.3 0 0.4 0 0.5 0 0.6 0 0.7 0 0.8 0 0.9 0 1]

### Chirp
- Run : 30 sec
- Block Parameter :
    - Intitial frequency : 0 Hz
    - Target Time : 25 sec
    - Frequency at target time : 2 Hz