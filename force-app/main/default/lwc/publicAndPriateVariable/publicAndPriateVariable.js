import { LightningElement,api,track } from 'lwc';

export default class PublicAndPriateVariable extends LightningElement {
    memberName = 'local Variable';
    @api myfavtTeam =' Chennai Super Kings';
   @track myPersonality = {
        name: 'Prashanth',
        age: 25,
    }
}