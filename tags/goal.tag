<goal>
  <div if={ showDiv }>
    <label>input your goals</label>
    <input type="text" ref="goal" name="" value="" placeholder="type in your goal">
    <button onclick={pushGoal}>Ok!Start!</button>

  </div>

  <app if={showGoal}></app>


  <script>
    this.showGoal=false;
    this.showDiv = true;
    this.pushGoal=function(event){
      this.showGoal=true;
      this.currentGoal=this.refs.goal.value;
      this.showDiv = false;
    }





  </script>

  <style>
    :scope {
      display:block;
      width: 80%;
      height:800px;
      padding: 15px;
      font-size: 20px;
    }
  </style>
</goal>
