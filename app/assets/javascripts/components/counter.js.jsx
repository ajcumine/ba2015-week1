var React = require('react/addons');

var Counter = React.createClass({

  getInitialState: function() {
    return({ count: this.props.count });
  },

  incrementCounter: function() {
    this.setState({ count: this.state.count + 1 });
  },

  render: function() {
    return (
      <div className="counter" ref="counterCounter">
        <h1 className="count" ref="counterCount">
          { this.state.count }
        </h1>
        <button className="bump" ref="counterButton" onClick={ this.incrementCounter }> +1</button>
      </div>
    );
  }
});

module.exports = Counter;
