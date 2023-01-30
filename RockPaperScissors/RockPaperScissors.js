let count1 = 0
let count2 = 0
function RockPaperScissors(playerChoice) {
    let disp = document.getElementById("display1");
    let disp2 = document.getElementById("display2");
    hideImages()
    const computerChoice = Math.floor(Math.random() * 3);
    const choices = ["Rock", "Paper", "Scissors"]
    const outcome = ["Its a Tie", "U Win!", "U Lose!"]
    winner = playerChoice - computerChoice
    if (winner < 0) {
        winner += 3
    }
    let win = document.getElementById("tie")
    if(winner==0){
        win = document.getElementById("tie")
    } else if(winner==1){
        win = document.getElementById("win")
        count1++;
        disp.innerHTML = count1;
    } else{
        win = document.getElementById("lose")
        count2++;
        disp2.innerHTML = count2;
    }
    win.style.visibility = "visible";
    showImage(computerChoice, playerChoice);
}
function showImage(computerChoice, playerChoice) {
    let img = document.getElementById("rock");
    if (computerChoice == 0) {
        img = document.getElementById("rock");
    } else if (computerChoice == 1) {
        img = document.getElementById("paper");
    } else {
        img = document.getElementById("scissors");
    }
    img.style.visibility = "visible";

    img = document.getElementById("myrock");
    if (playerChoice == 0) {
        img = document.getElementById("myrock");
    } else if (playerChoice == 1) {
        img = document.getElementById("mypaper");
    } else {
        img = document.getElementById("myscissors");
    }
    img.style.visibility = "visible";
}
function hideImages() {
    let img = document.getElementById("rock")
    img.style.visibility = "hidden";
    img = document.getElementById("paper")
    img.style.visibility = "hidden";
    img = document.getElementById("scissors")
    img.style.visibility = "hidden";
    img = document.getElementById("myrock")
    img.style.visibility = "hidden";
    img = document.getElementById("mypaper")
    img.style.visibility = "hidden";
    img = document.getElementById("myscissors")
    img.style.visibility = "hidden";
    let win = document.getElementById("win")
    win.style.visibility = "hidden";
    win = document.getElementById("lose")
    win.style.visibility = "hidden";
    win = document.getElementById("tie")
    win.style.visibility = "hidden";
}