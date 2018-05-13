class AllRatings extends React.Component{

  getInitialState() {
        return { ratings: [] }
      }

  componentDidMount() {
    $.getJSON('/api/v1/ratings.json', (response) => { this.setState({ ratings: response }) });
  }

  render() {
    var ratings= this.state.ratings.map((rating) => {
      return (
        <div>
          <h3>{rating.score}</h3>
          <p>{rating.review}</p>
        </div>
      )
    })

    return(
      <div>
        {ratings}
      </div>
    )

  }
}
