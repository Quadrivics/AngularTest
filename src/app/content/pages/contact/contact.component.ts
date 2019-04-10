import {Component, OnInit} from '@angular/core';
import { FormControl } from '@angular/forms';

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.css']
})
export class ContactComponent implements OnInit {
  email = new FormControl('');

  updateEmail() {
    this.email.setValue('ankit@appdividend.com');
  }

  constructor() {
  }

  ngOnInit() {
  }

}