class PublicController < ApplicationController

    layout 'public'

    def index
      @event = Event.upcoming.live
      @post = Post.published
    end

    def event
      @event = Event.upcoming.live.where(:permalink => params[:permalink]).first
      if @event.nil?
        redirect_to(:action => 'index')
      else
      end
      @venues = Venue.all
      @post = Post.all
    end

    def post
      @post = Post.published.where(:permalink => params[:permalink]).first
      if @post.nil?
        redirect_to(:action => 'index')
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
        redirect_to(:action => 'index')
      else
      end
    end

    def about
      @event = Event.upcoming.live
      @post = Post.published
    end

    def artsculture
      @event = Event.upcoming.live
      @post = Post.published
    end

    def festivalsfamily
      @event = Event.upcoming.live
      @post = Post.published
    end

    def fitnesswellbeing
      @event = Event.upcoming.live
      @post = Post.published
    end

    def fooddrink
      @event = Event.upcoming.live
      @post = Post.published
    end

    def moviestheatre
      @event = Event.upcoming.live
      @post = Post.published
    end

    def musicdance
      @event = Event.upcoming.live
      @post = Post.published
    end

    def containedvillage
      @event = Event.upcoming.live
      @post = Post.published
    end

    def contained13
      @event = Event.upcoming.live
      @post = Post.published
    end

    def use_for_redirect
      redirect_to(:controller => 'ccontroller_name', :action => 'action_name')
    end

  end
