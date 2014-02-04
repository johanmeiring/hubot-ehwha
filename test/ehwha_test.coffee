chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'Eh Wha:', ->
  ehwha_module = require('../src/ehwha')

  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @msg =
      send: sinon.spy()
      random: sinon.spy()
    @ehwha_module = ehwha_module(@robot)

  describe 'display correct response', ->

    it 'should register a hear listener', ->
      expect(@robot.hear).to.have.been.calledWith(/eh wha/)
