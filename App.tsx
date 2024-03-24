import React, {useEffect} from 'react';
import {NativeModules} from 'react-native';
import Hello from './Hello';

export const App = () => {
  const {RNSplashScreenModule} = NativeModules;

  useEffect(() => {
    RNSplashScreenModule.showSplashScreen();

    setTimeout(() => {
      RNSplashScreenModule.hideSplashScreen();
    }, 2000);
  }, []);

  return <Hello />;
};

export default App;
