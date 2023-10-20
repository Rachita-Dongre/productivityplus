//settings screen variables
int pomodoroTime = 25;
int breakTime = 5;
int longBreakTime = 30;
int dailyTarget = 8;

//counters for statistics
int pomodoroCount = 0;
int shortBreakCount = 0;
int longBreakCount = 0;

//statistics screen variables
String achievedOrNot = 'Achieved';
int pomodoroSessionsCompleted = pomodoroCount;
int effectiveWorkTime = pomodoroCount * pomodoroTime;
int effectiveShortBreakTime = shortBreakCount * breakTime;
int effectiveLongBreakTime = longBreakCount * longBreakTime;
int effectivebreakTime = effectiveShortBreakTime + effectiveLongBreakTime;

//pomodoro screen variables
String displayactivity = '';
