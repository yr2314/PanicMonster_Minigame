<goal>
  <div class="">
    <label>input your goals</label>
    <input type="text" ref="goal" name="" value="" placeholder="type in your goal">
    <button onclick={pushGoal}>Ok!Start!</button>
    <app if={showGoal}></app>

  </div>

  <script>
    this.showGoal=false;
    this.pushGoal=function(event){
      this.showGoal=true;
      this.currentGoal=this.refs.goal.value;
    }




  </script>

  <style>
    :scope {
      display:block;
      border: 1px solid #CCC;
      width: 80%;
      height:800px;
      padding: 15px;
      color: blue;
    }
  </style>
</goal>
