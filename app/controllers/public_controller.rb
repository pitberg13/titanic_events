class PublicController < ApplicationController

    layout 'public'

    def index
      @event = Event.upcoming.live
      @post = Post.published
    end

    def about
      @event = Event.upcoming.live
      @post = Post.published
    end

    def event
      @event = Event.upcoming.live.where(:permalink => params[:permalink]).first
      if @event.nil?
        redirect_to(:action => 'prigramme')
      else
      end
      @venues = Venue.all
      @post = Post.all
    end

    def post
      @post = Post.published.where(:permalink => params[:permalink]).first
      if @post.nil?
        redirect_to(:action => 'news')
      else
      end
      @event = Event.upcoming.live
    end

    def news
      @post = Post.published
    end

    def programme
      @event = Event.upcoming.live
      if @event.nil?
        redirect_to(:action => 'news')
      else
      end
    end

    def upcomingevents
      @event = Event.all
      if @event.nil?
        redirect_to(:action => 'programme')
      else
      end
    end

    def classes
      @event = Event.upcoming.live
      if @event.nil?
        redirect_to(:action => 'programme')
      else
      end
    end

    def use_for_redirect
      redirect_to(:controller => 'ccontroller_name', :action => 'action_name')
    end

  end
