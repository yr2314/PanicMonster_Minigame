<createlantern>

<div>
  <span>GOAL:</span> <input type="text" ref="goalInput" value="">
</div>
<div>
  <span>DEADLINE:</span> <input type="number" ref="deadlineInput" value=""> <span>days</span>
</div>

<div>
  <ul>
    <listitem ref="itemInput" each={ taskList }></listitem>
  </ul>
</div>

<div class="form-group">
  <input class="form-control" type="text" placeholder="Enter task" onkeypress={ addItem }>
</div>


<button type="button" onclick={ sendLanternData }>Save Lantern</button>

  <script>
    // var newLantern = {
    //   goal: "",
    //   deadline: "",
    //   tasks: []
    // };
    // console.log (this.newLantern);

    // var that = this;
    this.taskList = [];
    this.addItem = function(event) {
      var newTask = {};
      if (event.which === 13) {
        newTask.task = event.target.value;
        newTask.done = false;
        this.taskList.push(newTask);
        event.target.value = "";
        event.target.focus();
        // console.log(this.taskList);
      }
    }

    // for (var i = 0; i < taskList.length; i++) {
    //   var taskValue
    // }

    this.sendLanternData = function(event){
      // var taskValue = that.taskList
      var newLantern = {
        goal: this.refs.goalInput.value,
        deadline: this.refs.deadlineInput.value,
        task: [this.taskList]
      };
      newLantern.goal = this.refs.goalInput.value,
      newLantern.deadline = this.refs.deadlineInput.value,

      console.log(this.newLantern);
      this.parent.lanternList.push(newLantern);
      this.parent.showCreator = false;
      this.parent.update();
    }


  </script>

  <style>
    :scope {
      display: inline-block;
      width: 80%;
      padding: 15px;
      font-size: 30px;
      border: solid 2px grey;
    }
  </style>
</createlantern>
