import React from 'react';
import { Link } from 'react-router';
import classNames from 'classnames';

// Using "Stateless Functional Components"
export default function(props) {

  var homepageHeaderClass = classNames({
    'homepage-header': false
  });
  if (window.location.pathname == '/') {
    homepageHeaderClass = 'site-header homepage-header';
  } else {
    homepageHeaderClass = 'site-header'
  };
  return (
    <div className="container">
      <header className="header">
        <ol className="breadcrumb text-right">
          <li><Link to="/" activeClassName="active">Home</Link></li>
          <li><Link to="/users" activeClassName="active">Users</Link></li>
          <li><Link to="/widgets" activeClassName="active">Widgets</Link></li>
          <li><Link to="/portfolio-items" activeClassName="active">Portfolio</Link></li>
        </ol>
        <span className="logo"></span>
      </header>
      <main role="main">
       {props.children}
      </main>
    </div>
    );
}
