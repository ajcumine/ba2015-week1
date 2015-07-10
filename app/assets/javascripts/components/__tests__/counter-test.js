jest.dontMock('../counter.js.jsx');
var React = require('react/addons');
var Counter = require('../counter.js.jsx');
var TestUtils = React.addons.TestUtils;

describe('Counter', function() {
  it('loads with count at 0', function() {
    var instance = <Counter count={0} />;
    var DOM = TestUtils.renderIntoDocument(instance);

    expect(DOM.props).toEqual({count: 0});
    expect(DOM.refs.counterCount.getDOMNode().textContent).toEqual('0');
  });

  it('increments the count when the button is clicked', function() {
    var instance = <Counter count={0} />;
    var DOM = TestUtils.renderIntoDocument(instance);

    var button = DOM.refs.counterButton.getDOMNode();
    TestUtils.Simulate.click(button);
    expect(DOM.refs.counterCount.getDOMNode().textContent).toEqual('1');
  });
});
