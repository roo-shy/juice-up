var CheckboxInput = React.createClass({
  getInitialState: function () {
    return {
      checked: this.props.checked || false
    };
  },
 render: function () {
   return (
     <label>
       <input type="checkbox"
        name={this.props.name}
        checked={this.state.checked}
        onClick={this.handleClick}
        value={this.props.value} />
        {this.props.label}
     </label>
   );
 },
  handleClick: function(e) {
    this.setState({checked: e.target.checked});
  }
});

var question = { label: "Health", name: "a1", value: "health" };

React.render(<CheckboxInput label={question.label} name={question.name}/>,
document.getElementById("main"));
