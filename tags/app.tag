<app>

  <p>My goal is {parent.currentGoal}</p>

  <timer></timer>
<br>
<img ref="brain" src="media/RDM.jpg">
<br>

<table>
  <tr>
    <td><button type="button" onclick={ changeToWork } >choose this</button></td>
    <td><button type="button" onclick={ changeToPlay }>or choose this</button></td>
  </tr>
  <tr>
    <td> { workOption } </td>
    <td> { playOption }</td>
  </tr>
</table>


  <script>

  this.workOptions = [
    "This is a perfect time to start working on my final thesis",
    "Let’s start by reading some literature on this. My advisor gave me a list of 8 journals and 7 books",
    "Let’s think in a gap on the previous research and start typing something about that",
    "Let’s write the proposal, it is just one page long and in APA style",
    "Let’s read my proposal again and incorporate all the comments that my advisor gave me",
    "Let’s write the proposal all over again, because I feel it does not make any sense",
    "Let’s start writing the final paper. The rubric said it must be 40 pages without counting the bibliography and in APA style",
    "Let’s start by writing the conclusion, sometimes it helps to get inspired",
    "Let’s start structuring the paper to see how my arguments are going to be presented",
    "Let’s read more about this to be prepared for my next meeting with my advisor",
    "Let’s work on the presentation of my paper, it should be 15 slides and 30 minutes long",
    "Let’s spend the whole night working on this. I know I work better under pressure"
  ]
  this.playOptions = [
    "Let’s watch a bunch of YouTube videos on creatures of the deep sea and then go on a YouTube spiral that takes us through Elon Musk talking about why he thinks we’re living in a computer simulation, and ends with us watching interviews with Justin Bieber’s mom",
    "Let’s check sock prices on Amazon. That’s a great idea because then I will not lose time going to the store",
    "Let’s refresh your phone email again… again….and again, I’m sure something new and super urgent is about to appear on my inbox",
    "Let’s take a nap…perhaps I will wake up fresh to start working on my proposal",
    "Let’s reorganize our to-do-list, or even better, download a new app to make better to-do-lists and synchronize it between your iCalendar and Google Calendar in all our devices!!",
    "Let’s open the fridge to see if there’s anything new in there since 10 minutes ago",
    "Let’s take a look at all 1.200 facebook photos of this high school person I have been never friends",
    "We NEED to open Google Earth, hover a few hundreds feet above the southern tip of INDIA, and scroll all the way up India to the top of the country, to 'get a better feel of India'",
    "Oh! We need to clean out our inbox and check all those URGENT emails in there…",
    "The kitchen’s floor needs to be mopped ASAP",
    "Let’s split up our iPhoto albums into smaller more specific albums!",
    "Mmm it’s too late to really start any work at this point, let’s do something else"
  ]

  this.workItem = 0;
  this.workOption = this.workOptions[this.workItem];
  this.playItem = 0;
  this.playOption = this.playOptions[this.playItem];




  // console.log(this.workOption);

  this.changeToWork = function(event) {
      this.refs.brain.src = "media/RDM.jpg";
      this.changeOptions();
  };

  this.changeToPlay = function(event) {
      this.refs.brain.src = "media/IGM2.jpg";
      this.changeOptions();
  };

  this.changeOptions = function(event) {
    this.workItem = this.workItem + 1;
    this.workOption = this.workOptions[this.workItem];
    this.playItem = this.playItem + 1;
    this.playOption = this.playOptions[this.playItem];
  };





  </script>

  <style>
    :scope {
      display: inline-block;
      border: 1px solid #CCC;
      width: 700px;
      padding: 15px;
      color: blue;
    }
    img {
      width: 400px;
    }
  </style>
</app>
