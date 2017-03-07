<lantern>

<p>Goal: { goal }</p>
<p>Deadline: { deadline } days away</p>
<p>Task List:</p>
<ul each={task}>
 <input type="checkbox" checked={ done }>{task} </input>
</ul>


  <script>


  </script>

  <style>
    :scope {
      display: block;
      font-size: 30px;
      color: black;
      border: solid 2px red;
      padding: 15px;
    }
  </style>
</lantern>
