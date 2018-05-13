import React from 'react'
//Components
import SearchButton from './search_bar/SearchButton'
import SearchInput from './search_bar/SearchInput'
import Form from './commons/form'
import ItemList from './result_list/ItemList'
import SongFinder from './SongFinder'

const List= [
  {title: 'Asterdam'},
  {title: 'Andromeda'},
  {title: 'Instrumedley'},
  {title: 'Overture 1928'},
  {title: 'On the backs of the angels'},
  {title: 'Screaming head'}
];


export default class App extends React.Component {

  constructor(){
    super()
    this.state = {
      search: "",
      musicList:List
    }
  }


  handleSeachChange(event){
    this.setState({search: event.target.value})
  }

  handleSearchButton(event){
    event.preventDefault()
    if (this.state.search.length > 0){
      this.setState({musicList: List.filter(song =>  song.title.match(this.state.search))})
    }
    else{
      this.setState({musicList: List})
    }
  }

  render () {
    return (
      <div className="container">
        <div className="row">
          <div className="col-md-6">
            <Form>
              <SearchInput className="form-group" handleSeachChange={this.handleSeachChange.bind(this)} >
                <SearchButton handleSeachButton={this.handleSearchButton.bind(this)}/>
              </SearchInput>
            </Form>
            <ItemList musicList={this.state.musicList} />
          </div>
          <SongFinder className="col-md-6"/>
        </div>
      </div>
    )
  }
}
