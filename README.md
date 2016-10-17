# Changestream Worker Example

This is an example consumer for [Changestream](https://github.com/mavenlink/changestream) that
 makes use of [circuitry](https://github.com/kapost/circuitry) fan-out messaging for Changestream events.
 It is based on the [Circuitry example project](https://github.com/kapost/circuitry-example).

## Installation

1. Clone this repository: `git clone git@github.com:mavenlink/changestream-circuitry-example.git`
2. Update environment variables:
  * `cp .env.example .env`
  * Edit `.env` to set your AWS access/secret keys.  (Note that you'll need an [AWS account](http://aws.amazon.com) with rights to create/manage SQS and SNS.)
3. Install gems: `bundle install`

## Usage

1. Run the subscriber.  (Note that this is a long-running process that must be exited via `Ctrl+C`.)

        bundle exec ruby ./subscriber.rb`
