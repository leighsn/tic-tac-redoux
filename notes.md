### Instructor Comments

+ This looks like a great start Julie. I know you have a decent amount left to do to get the game running, but I think you've done a great job of breaking it up into models and services. Your methods are also short and named descriptively, which makes me happy.
+ I also like that you're creating relations between objects in your Game initialize method. That makes a lot of sense to me.

A couple things to note:
+ In your Game class, the
```
self.game.login_greeting
self.game.check_if_player_has_played_before
```
This code will never actually be called because it is not inside of a method. If you want this code to run, it needs to be wrapped inside of a method that is executed. You could do that inside of the initialize method if you want it to run every time an instance of Runner is created (Runner.new)

+ Another small thing - have a Game class that is acting like a service, but it's named more like a model class. Services are usually "doing" something. You might consider renaming it to something like GameMaker.
