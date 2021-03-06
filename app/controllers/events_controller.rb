class EventsController < ApplicationController
  PER_PAGE = 100

  def index
    email = params[:email].to_s.strip.presence
    page = params[:page]
    events = Event.email(email).recent(page, PER_PAGE)

    render locals: {
      count:  Event.count,
      newest_time: Event.newest_time,
      oldest_time: Event.oldest_time,
      email: email,
      events: events
    }
  end
end
