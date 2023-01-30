const players = [
    {
        name: "Mark",
        score: 200,
        id: 0,
        key: 1
    },
    {
        name: "Kees",
        score: 250,
        id: 1,
        key: 2
    },
    {
        name: "Piet",
        score: 100,
        id: 2,
        key: 3
    }
];


const Header = (props) => {
    return (
        <header id = "test">
            <h1>{props.title}</h1>
            <span className = "stats">Players: {props.totalPlayers}</span>
        </header>
    )
};

const Player = (props) => {
    return (
        <div className = "player">
            <span className = "player-name">{props.name}</span>
            <Counter score={props.score} id={props.id}/>
        </div>
    )
}

const Counter = (props) => {

    function countdec(){
        players[props.id].score = players[props.id].score - 1;
        root.render(<App />);
    }
    function countinc(){
        players[props.id].score = players[props.id].score + 1;
        root.render(<App />);
    }
    return (
        <div className ="counter">
            <button className = "counter-action decrement" onClick = {countdec}> - </button>
            <span className = "counter-score">{props.score}</span>
            <button className = "counter-action increment" onClick = {countinc}> + </button>
        </div>
    )
}

const App = () => {
    return (
        <div className = 'scoreboard'>
            <Header title = "Scoreboard" totalPlayers={players.length}/>

            {/* Player list */}
            {players.map( player =>
                <Player name={player.name} score={player.score} id={player.id} key={player.key}/>
            )}
        </div>
    )
}   

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<App />);
