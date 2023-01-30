const cities = [
    {
        name: 'Amsterdam',
        country: 'The Netherlands',
        residents: '900k',
        famous: 'Anne Frank museum',
        pic: <div class = "pics"><img src="img/amsterdam.jpg" alt="amsterdam"/></div>
    },
    {
        name: 'Berlin',
        country: 'Germany',
        residents: '3.6m',
        famous: 'Berlin Wall',
        pic: <div class = "pics"><img src="img/berlin.jpg" alt="berlin"/></div>
    },
    {
        name: 'Rome',
        country: 'Italy',
        residents: '2.8m',
        famous: 'Colosseum',
        pic: <div class = "pics"><img src="img/rome.webp" alt="rome"/></div>
    },
    {
        name: 'Rio de Janeiro',
        country: 'Brazil',
        residents: '6.7m',
        famous: 'Carnaval',
        pic: <div class = "pics"><img src="img/rio de janeiro.jpg" alt="rio de janeiro"/></div>
    },
    {
        name: 'New York',
        country: 'Murica',
        residents: '8.4m',
        famous: 'Statue of Liberty',
        pic: <div class = "pics"><img src="img/new york.jpg" alt="new york"/></div>
    }
];

const Header = (props) => {
    return (
        <header id = "test">
            <h1>{props.title}</h1>
        </header>
    )
};

const City = (props) => {
    return (
        <div classname = 'city flex-child'>
            <div class ="pic">{props.pic}</div>
            <div class = "name">{props.name}</div>
            <div class ="country"><b>Country:</b> &emsp;&emsp; {props.country}</div>
            <div class = "residents"><b>Residents:</b> &emsp; {props.residents}</div>
            <div class = "famous"><b>Famous for:</b> &ensp;{props.famous}</div>
        </div>
    )
}

const Top5 = (props) => {
    return (
        <div className = "top5">
            <Header title = 'Top 5 Cities in the world' />
            <div class = 'cities flex-container'>
            {cities.map(city =>
                <City 
                name = {city.name} 
                country = {city.country} 
                residents = {city.residents}
                famous = {city.famous}
                pic = {city.pic} />       
            )}
            </div>
        </div>
    )
}

ReactDOM.render(
    <Top5 />,
    document.getElementById('root')
)