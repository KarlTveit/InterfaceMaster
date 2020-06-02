
"use strict";

let TestMultipleResponseFields = require('./TestMultipleResponseFields.js')
let TestRequestAndResponse = require('./TestRequestAndResponse.js')
let TestMultipleRequestFields = require('./TestMultipleRequestFields.js')
let TestArrayRequest = require('./TestArrayRequest.js')
let SendBytes = require('./SendBytes.js')
let TestResponseOnly = require('./TestResponseOnly.js')
let TestEmpty = require('./TestEmpty.js')
let AddTwoInts = require('./AddTwoInts.js')
let TestNestedService = require('./TestNestedService.js')
let TestRequestOnly = require('./TestRequestOnly.js')

module.exports = {
  TestMultipleResponseFields: TestMultipleResponseFields,
  TestRequestAndResponse: TestRequestAndResponse,
  TestMultipleRequestFields: TestMultipleRequestFields,
  TestArrayRequest: TestArrayRequest,
  SendBytes: SendBytes,
  TestResponseOnly: TestResponseOnly,
  TestEmpty: TestEmpty,
  AddTwoInts: AddTwoInts,
  TestNestedService: TestNestedService,
  TestRequestOnly: TestRequestOnly,
};
