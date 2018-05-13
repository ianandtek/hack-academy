import React from 'react';
import {render, ReactDOM} from 'react-dom';
//
// import ServiceChooser from './ServiceChooser.js'
//
//
//
// var services = [{name:"s1",price:"123"},{name:"s2",price:"234"},{name:"s3",price:"234"}];
//
// render(<ServiceChooser services={services} />, document.getElementById('root'));


var ServiceChooser = React.createClass({

    getInitialState: function(){
        return { total: 0 };
    },

    addTotal: function( price ){
        this.setState( { total: this.state.total + price } );
    },

    render: function() {

        var self = this;

        var services = this.props.items.map(function(s){
            return <Service name={s.name} price={s.price} active={s.active} addTotal={self.addTotal} />;
        });

        return <div>
                    <h1>Services</h1>

                    <div id="services">
                        {services}

                        <p id="total">Total <b>${this.state.total.toFixed(2)}</b></p>

                    </div>

                </div>;

    }
});


var Service = React.createClass({

    getInitialState: function(){
        return { active: false };
    },

    clickHandler: function (){

        var active = !this.state.active;
        this.setState({ active: active });
        this.props.addTotal( active ? this.props.price : -this.props.price );

    },

    render: function(){

        return  <p className={ this.state.active ? 'active' : '' } onClick={this.clickHandler}>
                    {this.props.name} <b>${this.props.price.toFixed(2)}</b>
                </p>;

    }

});


var services = [
    { name: 'NEXUS', price: 300 },
    { name: 'PLEXUS', price: 400 },
    { name: 'FLUXUS', price: 250 },
    { name: 'YIAH', price: 220 }
];

render(
    <ServiceChooser items={ services } />,
    document.getElementById('root')
);
