import React, { Component } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
export default function (ComposedComponent) {
    class NotAuthentication extends Component {
        // UNSAFE_componentWillMount() {
        //     if (this.props.authenticated) {
        //         this.props.history.push('/login');
        //     }
        // }
        //
        // componentWillUpdate(nextProps) {
        //     if (nextProps.authenticated) {
        //         this.props.history.push('/');
        //     }
        // }

        PropTypes = {
            router: PropTypes.object,
        }

        render() {
            return <ComposedComponent {...this.props} />;
        }
    }

    function mapStateToProps(state) {
        return {authenticated: state.users.authenticated};
    }

    return connect(mapStateToProps)(NotAuthentication)
}
