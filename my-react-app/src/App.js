import React, { useEffect, useState } from 'react';
import './App.css';
import { fetchData } from './api';

function App() {
  const [data, setData] = useState(null);

  useEffect(() => {
   
    getData();

  },[]);

  const getData = async () => {
    
    try {
      const articles = await fetchData();
      console.log(articles['data'],'sadasdas')
      setData(articles['data']);
    
    } catch (error) {
      console.error('Error fetching data', error);
    }
  };


  return (
    <div className="App">
      <header className="App-header">
        <h1>My React App</h1>
        <ul>
          {data && data.map((item,idx) => (
            <li key={idx}>
              <h2>{item.attributes?.Title}</h2>
              <p>{item.attributes?.Content[0].children[0].text}</p>
            </li>
          ))}
        </ul>
      </header>
    </div>
  );
}

export default App;

