var FizzbuzzResults = React.createClass({

  render: function() {
    var results = this.props.results.map(function(result) {
      return (
        <li className="fizzbuzz__result">
          { result }
        </li>
      );
    });

    return (
      <div className="fizzbuzz">
        <h1 className="fizzbuzz__title">
          Fizzbuzz Results for { this.props.results.length }
        </h1>
        <ol className="fizzbuzz__list">
          { results }
        </ol>
      </div>
    );
  }
});

module.exports = FizzbuzzResults;
