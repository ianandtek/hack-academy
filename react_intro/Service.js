import React, {Component} from 'react';

class Service extends Component {
      constructor(){
        super();
        this.state = {
          active: false
        }
        this.clickHandler = this.clickHandler.bind(this)
      }

      clickHandler(){
        console.log(this.state.active)
          var active = !this.state.active;
          this.setState({ active: active });
          this.props.addTotal( active ? this.props.price : -this.props.price );
      }

      render(){
          return  <p className={ this.state.active ? 'active' : '' } onClick={this.clickHandler}>
                      {this.props.name} <b>${this.props.price}</b>
                  </p>;

      }
}

export default Service;
