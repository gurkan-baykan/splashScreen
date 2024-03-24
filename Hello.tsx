import {View, Text, StyleSheet, Animated} from 'react-native';
import React, {useRef, useEffect} from 'react';

export default function Hello() {
  const fadeAnim = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    Animated.timing(fadeAnim, {
      toValue: 1,
      duration: 8000,
      useNativeDriver: true,
    }).start();
  }, [fadeAnim]);

  return (
    <View
      style={{
        display: 'flex',
        flexDirection: 'column',
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
      }}>
      <Animated.View
        style={[
          {
            // Bind opacity to animated value
            opacity: fadeAnim,
          },
        ]}>
        <Text style={{fontSize: 19}}>Welcome to Hello page</Text>
      </Animated.View>
    </View>
  );
}
