<timer>

    <p>timer.tag</p>
    <p>{ time } Days Left</p>
    <img show={ panicMonster } src="media/PM.jpg">

    <script>
        this.time = 100;
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
            border: 1px solid #CCC;
            width: 100px;
            padding: 15px;
            color: blue;
        }

    </style>
</timer>
