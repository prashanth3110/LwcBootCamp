import { LightningElement } from 'lwc';

export default class DataBinding extends LightningElement {
    userName = 'Prashanth';
    
    currentTime = new Date().toLocaleTimeString();
    subscribeScore = 9;
    totalWatchTime = 50 * 60; // 50 minutes in seconds
    status = '';
    handleStatusChange(event) {
        console.log('Even Target Recieved:'+event.target);
        console.log('Even Target Value Recieved:'+typeof(event.target));
        console.log('Even Target Value Recieved:'+JSON.stringify(event.target.value));
        this.status = event.target.value;
    }
}