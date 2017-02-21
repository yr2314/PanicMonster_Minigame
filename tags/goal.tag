<goal>
  <div if={ showDiv }>
    <label>What is a goal you are working on? </label><br>
    <input type="text" ref="goal" name="" value="" placeholder="input your goal"><br>
    <button onclick={pushGoal}>Ok! Let's Start Working</button>
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
      display: inline-block;
      width: 80%;
      height:800px;
      padding: 15px;
      font-size: 30px;
    }
    label {
      color: #3EACA8;
    }
  </style>
</goal>
