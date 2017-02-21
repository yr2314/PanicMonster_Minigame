<timer>
    <div class="timer">
      <p>{ time } Days Left</p>
      <img src="http://www.clipartbest.com/cliparts/Kij/g66/Kijg66ekT.gif" id="clock">
    </div>
    <img show={ panicMonster } src="media/PM.gif" id="panicMonster">

    <script>
        this.time = 21;
        this.panicMonster = false;
        tick() {
          if(this.time <= 100 && this.time>0){
            this.time--;
            if (this.time <= 20) {
                this.panicMonster = true;
            }
            this.update();
          }
          else{
            clearInterval(timer);
          }
        }
        var timer = setInterval(this.tick, 1000);
        this.on('unmount', function () {
            clearInterval(timer)
        })
    </script>

    <style>
        :scope {
            display: inline-block;
            padding: 15px;
            color: #5A5050;
            float: right;
        }
        #clock {
            width: 50px;
        }
        .timer {
            border: dotted 2px;
            border-radius: 40px;
            padding: 10px;

        }
        #panicMonster {
            width: 150px;
        }

    </style>
</timer>
