##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

require 'spec_helper.rb'

describe 'Queue' do
  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .queues("QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "average_wait_time": 0,
          "current_size": 0,
          "date_created": "Tue, 04 Aug 2015 18:39:09 +0000",
          "date_updated": "Tue, 04 Aug 2015 18:39:09 +0000",
          "friendly_name": "0.361280134646222",
          "max_size": 100,
          "sid": "QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))
    
    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .queues("QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    
    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .queues("QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").update()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "average_wait_time": 0,
          "current_size": 0,
          "date_created": "Tue, 04 Aug 2015 18:39:09 +0000",
          "date_updated": "Tue, 04 Aug 2015 18:39:09 +0000",
          "friendly_name": "0.361280134646222",
          "max_size": 100,
          "sid": "QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))
    
    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .queues("QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").update()
    
    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .queues("QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        204,
      nil,
    ))
    
    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .queues("QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    
    expect(actual).to eq(true)
  end

  it "can read" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .queues.list()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues.json',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues.json?PageSize=1&Page=0",
          "last_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues.json?PageSize=1&Page=12857",
          "next_page_uri": null,
          "num_pages": 12858,
          "page": 0,
          "page_size": 1,
          "previous_page_uri": null,
          "queues": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "average_wait_time": 0,
                  "current_size": 0,
                  "date_created": "Tue, 04 Aug 2015 18:39:09 +0000",
                  "date_updated": "Tue, 04 Aug 2015 18:39:09 +0000",
                  "friendly_name": "0.361280134646222",
                  "max_size": 100,
                  "sid": "QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
              }
          ],
          "start": 0,
          "total": 12858,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues.json?PageSize=1&Page=0"
      }
      ]
    ))
    
    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .queues.list()
    
    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues.json?PageSize=1&Page=0",
          "last_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues.json?PageSize=1&Page=12857",
          "next_page_uri": null,
          "num_pages": 12858,
          "page": 0,
          "page_size": 1,
          "previous_page_uri": null,
          "queues": [],
          "start": 0,
          "total": 12858,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues.json?PageSize=1&Page=0"
      }
      ]
    ))
    
    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .queues.list()
    
    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .queues.create()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues.json',
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "average_wait_time": 0,
          "current_size": 0,
          "date_created": "Tue, 04 Aug 2015 18:39:09 +0000",
          "date_updated": "Tue, 04 Aug 2015 18:39:09 +0000",
          "friendly_name": "0.361280134646222",
          "max_size": 100,
          "sid": "QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queues/QUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))
    
    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .queues.create()
    
    expect(actual).to_not eq(nil)
  end
end