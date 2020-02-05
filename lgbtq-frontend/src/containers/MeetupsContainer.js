import React from "react";
import axios from 'axios'
import {connect} from 'react-redux'
import {addMeetup, axiosGetCategories, axiosGetMeetups, getMeetups, updateMeetup} from "../actions/meetup";
import Meetups from "../components/Meetups";
class MeetupsContainer extends React.Component {
    // state = {
    //     meetups: []
    // }



    componentDidMount() {
        this.props.axiosGetCategories()
        this.props.axiosGetMeetups()
    }



    render() {

        return(
    <div>
        <Meetups meetups={this.props.meetups.meetups}/>
    </div>
        )
    }
}
const mapStateToProps = (state) => {
    return{meetups: state.meetups}
}

const mapDispatchToProps = (dispatch) => {
    return{
        axiosGetMeetups: (meetups) => {
            dispatch(axiosGetMeetups(meetups))
        },
        axiosGetCategories: (categories) => {
            dispatch(axiosGetCategories(categories))
        }
    }

}
export default connect(mapStateToProps, mapDispatchToProps)(MeetupsContainer)