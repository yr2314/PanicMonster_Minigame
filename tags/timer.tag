<timer>

  <p>timer.tag</p>
  <p>{ time } Days Left</p>
  <img show={ panicMonster } src="media/PM.jpg">



  <script>
    var stopCount=function(){
      clearInterval(timer);
    }
    this.time = 10;
    this.panicMonster = false;
    tick() {
      this.time--;
      if (this.time <= 30) {
        this.panicMonster = true;
      } else if (this.time <30 && this.time >=0)  {
        this.panicMonster = false;
      } else if (this.time < 0){
        this.stopCount();
      }
      this.update();
    }
    var timer = setInterval(this.tick,1000)
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
