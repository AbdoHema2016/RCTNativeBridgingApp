import React, { Component } from 'react'
import {View,Text,requireNativeComponent} from 'react-native'
const RNSwipeable = requireNativeComponent('RNSwipeable', null);

export default class Swipes extends Component {
    render() {
        return (
            <RNSwipeable>
                <Text>
                    Swipe
                </Text>
            </RNSwipeable>
        )
    }
}

