Project Links
Front End:
Back End:
Live Link:

### **Project Proposal:**

*WeFlix is an app designed to help groups of people settle on a movie to watch together. A group is given a shareable link to a survey that will give them a list of questions/preferences for them to select for the movie they are watching. Once everyone has submitted, WeFlix will choose a few movies for them to watch!*


### APIS


### Wireframes


### Architecture
**components**
**routes**

### MVP/PostMVP





Component	Priority	Estimated Time	Time Invetsted	Actual Time
Create React app and files for all components	H	1	40min	40min
Basic Navbar & Footer	H	1	45min	45min
Set up basic React routing	H	1	30min	30min
Make trivia API call, parse important data	H	2	1.5	1.5
Display questions and selectable answers, change on submit	H	3	4	4
Create logic to test for correct answer	H	1	35min	35min
Allow only one answer to be selected per question	H	1	1	1
Keep track of score	H	2	2	2
Style game display - basic	H	2	3	3
Make game display dynamic	H	1	1	1
Create game options form	H	3	3	3
Incorporate selected options into API call	H	1	1.5	1.5
Add content for instructions page	H	1	1	1
Make Navbar dynamic using ReactStrap	H	1	1	INC
Learn how to use Firebase	M	4	3	3
Add submit your score form to end of game	M	3	2	2
Create leaderboard, populate locally	M	3	3	3
Update and populate leaderboard using Firebase	M	3	.5	INC
Create multiple leaderboards, based on selected difficulty	L	3	0	INC
Additional styling for game (progress bar, etc.)	L	4	5	5
Additional styling for Navbar, Footer, other pages	L	4	9	9
Total	H	45	44	44
Additional Libraries
ReactStrap - responsive navbar, progress bar for game Firebase - updating and retrieving leaderboard

Code Snippet
Use this section to include a brief code snippet of functionality that you are proud of and a brief description. Code snippet should not be greater than 10 lines of code.

The below code is how the leaderboard is populated. The shorter the name, the more dots are added between the name and score. The font size is set progressively smaller for each entry.

let fontSize = props.gameView ? 24 : 42

scoreList = props.highScores.map((highScore, i) => {
	let dots = ' . . . '   
	for (let j = highScore.name.length; j < 12; j += 2) {
		dots += '. '
	}
	if (i > 0) {
		let mult = (i < 3 ? 2 : 1)
		props.gameView ? fontSize -= 1 * mult : fontSize -= 3 * mult
	}
...

	return (
		<li style={{fontSize: `${fontSize}px`, color: color}} key={i}>
			<span className="bold">{`${i + 1}) `}</span>
			{highScore.name} {dots} {highScore.score}
		</li>
	) 
})