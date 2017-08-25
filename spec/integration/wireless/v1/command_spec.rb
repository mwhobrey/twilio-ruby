##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'Command' do
  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.wireless.v1.commands("DCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://wireless.twilio.com/v1/Commands/DCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "command": "command",
          "command_mode": "text",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "sim_sid": "DEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "direction": "from_sim",
          "sid": "DCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "queued",
          "url": "https://wireless.twilio.com/v1/Commands/DCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.wireless.v1.commands("DCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.wireless.v1.commands.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://wireless.twilio.com/v1/Commands',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "commands": [],
          "meta": {
              "first_page_url": "https://wireless.twilio.com/v1/Commands?PageSize=50&Page=0",
              "key": "commands",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://wireless.twilio.com/v1/Commands?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.wireless.v1.commands.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "commands": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "command": "command",
                  "command_mode": "text",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "sim_sid": "DEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "direction": "from_sim",
                  "sid": "DCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "status": "queued",
                  "url": "https://wireless.twilio.com/v1/Commands/DCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "meta": {
              "first_page_url": "https://wireless.twilio.com/v1/Commands?PageSize=50&Page=0",
              "key": "commands",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://wireless.twilio.com/v1/Commands?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.wireless.v1.commands.list()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.wireless.v1.commands.create(command: "command")
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'Command' => "command",
    }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://wireless.twilio.com/v1/Commands',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "command": "command",
          "command_mode": "text",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "sim_sid": "DEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "direction": "from_sim",
          "sid": "DCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "queued",
          "url": "https://wireless.twilio.com/v1/Commands/DCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.wireless.v1.commands.create(command: "command")

    expect(actual).to_not eq(nil)
  end
end