Practical 2
Single page applications and use React Router to design single page applications.
Code:
App.jsx :
import React from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom"; import Home from "./components/Home";
import RoomList from "./components/RoomList";
import ReservationForm from "./components/ReservationForm"; import NotFound from "./components/NotFound";
import Navigation from "./components/Navigation";

const App = () => { return (
<Router>
<Navigation />
<Routes>
<Route path="/" element={<Home />} />
<Route path="/rooms" element={<RoomList />} />
<Route path="/reserve" element={<ReservationForm />} />
<Route path="*" element={<NotFound />} />
</Routes>
</Router>
);
};

export default App;

Navigation.jsx:
import React from "react";
import { Link } from "react-router-dom";

const Navigation = () => { return (
<nav>
<ul>
<li>
<Link to="/">Home</Link>
</li>
<li>
<Link to="/rooms">Rooms</Link>
</li>
<li>
<Link to="/reserve">Reserve</Link>
</li>
</ul>
</nav>
);
};

export default Navigation;

Home.jsx:
import React from "react";
const Home = () => {
return (
<div>
<h1>Welcome to Hotel Management</h1>
<p>Explore available rooms and make reservations!</p>
</div>
);
};

export default Home;
 
RoomList.jsx:
import React from "react";

const rooms = [
{ id: 1, number: 101, type: "Single", price: 50 },
{ id: 2, number: 201, type: "Double", price: 80 },
];

const RoomList = () => { return (
<div>
<h2>Available Rooms</h2>
<ul>
{rooms.map((room) => (
<li key={room.id}>
Room {room.number}: {room.type} - ${room.price} per night
</li>
))}
</ul>
</div>
);
};

export default RoomList;



 
Practical 3
Use various React features including components and forms.
Code:
App.jsx:

 
 
RegistraionForm.jsx:
import "./styles.css";
import React, { useState } from "react";
import RegistrationForm from "./RegistrationForm";

export default function App() {
const [values, setValues] = useState({ firstName: "",
lastName: "",
email: "",
});

const handleInputChange = (event) => { event.preventDefault();

const { name, value } = event.target; setValues((values) => ({
...values,
[name]: value,
}));
};

const [submitted, setSubmitted] = useState(false); const [valid, setValid] = useState(false);
const handleSubmit = (e) => { e.preventDefault();
if (values.firstName && values.lastName && values.email) { setValid(true);
}
setSubmitted(true);
};

return (
<div className="form-container">
<RegistrationForm values={values} valid={valid}
submitted={submitted}
handleSubmit={handleSubmit} handleInputChange={handleInputChange}
/>
</div>
);
}
Regrastionform.jsx:
import React from "react";

const RegistrationForm = ({ values,
valid, submitted, handleSubmit,
handleInputChange,
}) => {
return (
<form className="register-form" onSubmit={handleSubmit}>
{submitted && valid && (
<div className="success-message">
<h3>
{" "}
Welcome {values.firstName} {values.lastName}{" "}
</h3>
<div> Your registration was successful! </div>
</div>
)}
{!valid && (
<input
class="form-field" type="text" placeholder="First Name" name="firstName" value={values.firstName} onChange={handleInputChange}
/>
)}

{submitted && !values.firstName && (
<span id="first-name-error">Please enter a first name</span>
)}

{!valid && (
<input
class="form-field"  type="text" placeholder="Last Name" name="lastName" value={values.lastName} onChange={handleInputChange}
/>
)}
{submitted && !values.lastName && (
<span id="last-name-error">Please enter a last name</span>
)}
{!valid && (
<input
class="form-field" type="email" placeholder="Email" name="email" value={values.email} onChange={handleInputChange}
/>
)}
{submitted && !values.email && (
<span id="email-error">Please enter an email address</span>
)}
<label>Gender:</label>
<div className="gender-radio form-field">
<input type="radio" id="male" name="gender" value="male" />
<label htmlFor="male">Male</label>
<input type="radio" id="female" name="gender" value="female" />
<label htmlFor="female">Female</label>
</div>
{!valid && (
<button class="form-field" type="submit"> Register
</button>
)}
</form>
);
};
 


Practical 4
Implement a functional front-end web application using React.
Code:
App.jsx:

import React, { useState } from "react"; 
import "./App.css";
const MovieForm = ({ addMovie }) => { const [title, setTitle] = useState(""); const [genre, setGenre] = useState("");

const handleSubmit = (e) => { e.preventDefault();
if (title.trim() && genre.trim()) { addMovie({ title, genre }); setTitle("");
setGenre("");
}
};

return (
<form onSubmit={handleSubmit}>
<label> Title:
<input
type="text" value={title}
onChange={(e) => setTitle(e.target.value)}
/>
</label>
<label> Genre:
<input
type="text" value={genre}
onChange={(e) => setGenre(e.target.value)}
/>
</label>
<button className="btn-form" type="submit"> Add Movie
</button>
</form>
);
};

const MovieList = ({ movies, removeMovie }) => { return (
<ul>
{movies.map((movie) => (
<li key={movie.id}>
{movie.title} - {movie.genre}
<button onClick={() => removeMovie(movie.id)}>Remove</button>
 </li>
))}
</ul>
);
};

function App() {
const [movies, setMovies] = useState([]);

const addMovie = (movie) => {
setMovies([...movies, { ...movie, id: Date.now() }]);
};

const removeMovie = (movieId) => {
const updatedMovies = movies.filter((movie) => movie.id !== movieId); setMovies(updatedMovies);
};

return (
<div className="App">
<h1>Movie List App</h1>
<MovieForm addMovie={addMovie} />
<MovieList movies={movies} removeMovie={removeMovie} />
</div>
);
}

export default App;

  
Practical 5
Create a Dropdown Button Filter
Code:
App.jsx:
import React from "react";
import DropDownFilter from "./DropDownFilter";

const App = () => { return (
<div>
<DropDownFilter />
</div>
);
};

export default App;


DropDownFilter.jsx:
import React, { useState } from "react";
 
const DropDownFilter = () => {
const [selectedCategory, setSelectedCategory] = useState("all");

const handleCategoryChange = (event) => { setSelectedCategory(event.target.value);
};

const items = [
{ id: 1, name: "Red", category: "Color" },
{ id: 2, name: "Apple", category: "Fruit" },
{ id: 3, name: "Cat", category: "Animal" },
{ id: 4, name: "Blue", category: "Color" },
{ id: 5, name: "Grapes", category: "Fruit" },
{ id: 6, name: "Dog", category: "Animal" },
];

const filteredItems = selectedCategory === "all"
? items
: items.filter((item) => item.category === selectedCategory);

return (
<div>
<label htmlFor="category">Select a category: </label>
<select id="category"
onChange={handleCategoryChange} value={selectedCategory}
>
<option value="all">All</option>
<option value="Color">Colors</option>
<option value="Fruit">Fruits</option>
<option value="Animal">Animals</option>
</select>
<ul>
{filteredItems.map((item) => { return (
<li key={item.id}>
{item.name} ({item.category})
</li>
);
})}
</ul>
</div>
);

export default DropDownFilter;

 
Practical 6
Create Basics Interactive examples using ReactJS
Code:
App.jsx:
import React from "react"; import Counter from "./Counter";
import SimpleForm from "./SimpleForm"; import ToggleButton from "./ToggleButton";

const App = () => { return (
<div>
<h1>React Basics Examples</h1>
<Counter />
<hr />
<SimpleForm />
<hr />
<ToggleButton />
</div>
);
};

export default App;


Counter.jsx:

 import React, { useState } from "react";

const Counter = () => {
const [count, setCount] = useState(0);

const increment = () => { setCount(count + 1);
};

const decrement = () => { setCount(count - 1);
};
return (
<div>
<h2>Counter: {count}</h2>
<button onClick={increment}>Increment</button>
<button onClick={decrement}>decrement</button>
</div>
);
};

export default Counter;

SimpleForm.jsx:

import React, { useState } from "react";

const SimpleForm = () => {
const [inputValue, setInputValue] = useState("");
const [submittedValue, setSubmittedValue] = useState("");

const handleChange = (event) => { setInputValue(event.target.value);
};

const handleSubmit = (event) => { event.preventDefault(); setSubmittedValue(inputValue);
};

return (
<div>
<h2>Simple Form</h2>
<form onSubmit={handleSubmit}>
<label>
Type something:
<input type="text" value={inputValue} onChange={handleChange} />
</label>
<button type="submit">Submit</button>
</form>
{submittedValue && <p>You submitted: {submittedValue}</p>}
</div>
);
};
export default SimpleForm;

ToggleButton.jsx:
import React, { useState } from "react";

const ToggleButton = () => {
const [isToggled, setIsToggled] = useState(false);

const handleToggle = () => { setIsToggled(!isToggled);
};

return (
<div>
<h2>Toggle Button</h2>
<button onClick={handleToggle}>
{isToggled ? "Toggle Off" : "Toggle On"}
</button>
{isToggled && <p>The button is toggled on!</p>}
</div>
);
};

export default ToggleButton;


Practical 7
Demonstrate Function Components and Class Components in ReactJS
Code:
1)	Functional Component Code : App.jsx :
2)	import React, { useState } from "react"; import "bootstrap/dist/css/bootstrap.css";
import Container from "react-bootstrap/Container"; import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import Button from "react-bootstrap/Button";

 
import InputGroup from "react-bootstrap/InputGroup"; import FormControl from "react-bootstrap/FormControl"; import ListGroup from "react-bootstrap/ListGroup";

const App = () => {
const [userInput, setUserInput] = useState(""); const [list, setList] = useState([]);

const updateInput = (value) => { setUserInput(value);
};

const addItem = () => { if (userInput !== "") {
const newItem = { id: Math.random(), value: userInput
};
setList([...list, newItem]); setUserInput("");
}
};

const deleteItem = (key) => {
const updatedList = list.filter((item) => item.id !== key); setList(updatedList);
};

const editItem = (index) => {
const editedTodo = prompt("Edit the todo:");
if (editedTodo !== null && editedTodo.trim() !== "") { const updatedList = list.map((item, i) =>
i === index ? { ...item, value: editedTodo } : item
);
setList(updatedList);
}
};

return (
<Container>
<Row
style={{
display: "flex", justifyContent: "center", alignItems: "center",
 
fontSize: "3rem", fontWeight: "bolder"
}}
>
TODO LIST
</Row>

<hr />
<Row>
<Col md={{ span: 5, offset: 4 }}>
<InputGroup className="mb-3">
<FormControl
placeholder="add item . . . " size="lg"
value={userInput}
onChange={(e) => updateInput(e.target.value)} aria-label="add something"
aria-describedby="basic-addon2"
/>
<InputGroup>
<Button variant="dark" className="mt-2" onClick={addItem}> ADD
</Button>
</InputGroup>
</InputGroup>
</Col>
</Row>
<Row>
<Col md={{ span: 5, offset: 4 }}>
<ListGroup>
{list.map((item, index) => (
<div key={index}>
<ListGroup.Item variant="dark" action style={{
display: "flex", justifyContent: "space-between"
}}
>
{item.value}
<span>
<Button
style={{ marginRight: "10px" }} variant="light"
onClick={() => deleteItem(item.id)}
>
Delete
</Button>
<Button variant="light" onClick={() => editItem(index)}> Edit
</Button>
</span>
</ListGroup.Item>
</div>
))}
</ListGroup>
</Col>
</Row>
</Container>
);
};

export default App;
 

2)	Class Component Code:
App.jsx:
import React, { Component } from "react"; import "bootstrap/dist/css/bootstrap.css";
import Container from "react-bootstrap/Container"; import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col"; import Button from "react-bootstrap/Button";
import InputGroup from "react-bootstrap/InputGroup"; import FormControl from "react-bootstrap/FormControl"; import ListGroup from "react-bootstrap/ListGroup";

class App extends Component { constructor(props) { super(props);

this.state = { userInput: "",
list: [],
};
 updateInput(value) {
this.setState({ userInput: value,
});
}

addItem() {
if (this.state.userInput !== "") { const userInput = {
id: Math.random(),

value: this.state.userInput,
};

const list = [...this.state.list]; list.push(userInput);

this.setState({ list, userInput: "",
});
}
}

deleteItem(key) {
const list = [...this.state.list];

const updateList = list.filter((item) => item.id !== key);

this.setState({ list: updateList,
});
}

editItem = (index) => {
const todos = [...this.state.list];
const editedTodo = prompt('Edit the todo:');
if (editedTodo !== null && editedTodo.trim() !== '') { let updatedTodos = [...todos] updatedTodos[index].value= editedTodo this.setState({
list: updatedTodos,
});
}
}
 
render() {
return (
<Container>
<Row
style={{
display: "flex", justifyContent: "center", alignItems: "center", fontSize: "3rem", fontWeight: "bolder",
}}
>
TODO LIST
</Row>

<hr />
<Row>
<Col md={{ span: 5, offset: 4 }}>
<InputGroup className="mb-3">
<FormControl
placeholder="add item . . . " size="lg" value={this.state.userInput} onChange={(item) =>
this.updateInput(item.target.value)
}
aria-label="add something" aria-describedby="basic-addon2"
/>
<InputGroup>
<Button
variant="dark" className="mt-2"
onClick={() => this.addItem()}
>
ADD
</Button>
</InputGroup>
</InputGroup>
</Col>
</Row>
<Row>
<Col md={{ span: 5, offset: 4 }}>
<ListGroup>
\	{this.state.list.map((item, index) => {
return (
<div key = {index} >
<ListGroup.Item variant="dark" action
style={{display:"flex",
justifyContent:'space-between'
}}
>
{item.value}
<span>
<Button style={{marginRight:"10px"}} variant = "light"
onClick={() => this.deleteItem(item.id)}> Delete
</Button>
<Button variant = "light" onClick={() => this.editItem(index)}> Edit
</Button>
</span>
</ListGroup.Item>
</div>
);
})}
</ListGroup>
</Col>
</Row>
</Container>
);
}
}

export default App;

 
 

Practical 8
Handling user events in React
Code:
App.jsx:
import React, { useState } from "react";

function App() {
const [headingText, setHeadingText] = useState("Hello"); const [isMousedOver, setMouseOver] = useState(false);

function handleClick() {
setHeadingText("Submitted");
}

function handleMouseOver() { setMouseOver(true);
}

function handleMouseOut() { setMouseOver(false);
}

return (
<div className="container">
<h1>{headingText}</h1>
<input type="text" placeholder="What's your name?" />
<button
style={{ backgroundColor: isMousedOver ? "black" : "white" }} onClick={handleClick}
onMouseOver={handleMouseOver} onMouseOut={handleMouseOut}
>
Submit
</button>
</div>
);
}

export default App;

 
 

 
Output:

  
Practical 9
 Use Reactstrap for designing responsive React applications.

CODE:

import React from "react";
import {
  Container,
  Row,
  Col,
  Card,
  CardBody,
  CardTitle,
  CardText,
} from "reactstrap";
import "./App.css";
import "bootstrap/dist/css/bootstrap.min.css";

const App = () => {
  return (
    <Container className="mt-4">
      <Row>
        <Col xs="12" sm="6" md="4">
          <Card>
            <CardBody>
              <CardTitle>HTML</CardTitle>
              <CardText>
                HTML provides a means to create structured documents by denoting
                structural semantics for text such as headings, paragraphs,
                lists, links, quotes, and other
              </CardText>
            </CardBody>
          </Card>
        </Col>
        <Col xs="12" sm="6" md="4">
          <Card>
            <CardBody>
              <CardTitle>css</CardTitle>
              <CardText>
                CSS, or Cascading Style Sheets, offers a flexible way to style
                web content, with styles originating from browser defaults, user
                preferences, or web designers.
              </CardText>
            </CardBody>
          </Card>
        </Col>
        <Col xs="12" sm="6" md="4">
          <Card>
            <CardBody>
              <CardTitle>Js</CardTitle>

              <CardText>
                JavaScript often abbreviated as JS, is a programming language
                and fore technology of the World Wide Web, alongside HTML and
                cSS.
              </CardText>
            </CardBody>
          </Card>
        </Col>
      </Row>
    </Container>
  );
};

export default App;

 


 CALCULATOR
import React, { Component } from 'react';
import './styles.css';
import ResultComponent from './components/ResultComponent';
import KeyPadComponent from './components/KeyPadComponent';

class App extends Component {
  state = {
    result: ""
  }

  onClick = button => {
    if(button === "=") {
      this.calculate();
    }

    else if(button === "C") {
      this.reset();
    }

    else if(button === "CE") {
      this.backspace();
    }

    else {
      this.setState({
        result: this.state.result + button
      })
    }
  };

  calculate = () => {
    var checkResult = ''
    if(this.state.result.includes('--')) {
      checkResult = this.state.result.replace('--', '+')
    } else {
      checkResult = this.state.result;
    }

    try {
      this.setState({
        result: (eval(checkResult) || "") + ""
      })
    } catch(e) {
      this.setState({
        result: "error"
      })
    }
  };

  reset = () => {
    this.setState({
      result: ""
    })
  };

  backspace = () => {
    this.setState({
        result: this.state.result.slice(0, -1)
    })
  };

  render() {
    return (
      <div>
        <div className="calculator-body">
          <h1>Simple Calculator</h1>
          <ResultComponent result={this.state.result} />
          <KeyPadComponent onClick={this.onClick} />
        </div>
      </div>
    )
  }
}

export default App;

