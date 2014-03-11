#!/usr/bin/env ruby
require './config'

class Seed < Database
  sites = @@db['sites']

  sites.drop

  5.times do |i|
    names = %w{Todolist MiDiSpot Wishlist Djopa NoName}
    icons = %w{
      http://icons.iconarchive.com/icons/custom-icon-design/mono-general-2/128/document-icon.png
      http://icons.iconarchive.com/icons/hopstarter/gloss-mac/128/Sites-icon.png
      http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Actions-bookmark-new-list-icon.png
      http://icons.iconarchive.com/icons/tribalmarkings/colorflow/128/linux-bum-icon.png
      http://icons.iconarchive.com/icons/custom-icon-design/pretty-office-2/128/FAQ-icon.png
    }
    short_descriptions = [
      'Запиши свои дела',
      'Этот сайт',
      'Запиши мечты',
      'Как она сюда попала?',
      'Не знаю',
    ]

    site={
      name: names[i],
      link: '#',
      icon: icons[i],
      screenshot: '',
      technologies: [
        {
          type: 'Сервер HTTP',
          name: 'Apache2',
          version: '2.2.22',
          link: 'http://apache.org'
        },
        {
          type: 'Сервер приложений',
          name: 'Phusion Passenger',
          version: '4.0.33',
          link: 'http://phusionpassenger.com'
        },
        {
          type: 'Сервер БД',
          name: 'MongoDB',
          version: '2.4.9',
          link: 'http://mongodb.org'
        },
        {
          type: 'Язык',
          name: 'Ruby',
          version: '2.1.0p0',
          link: 'http://ruby-lang.org'
        },
      ],
      github: 'http://github.com/vizvamitra/'+names[i].downcase,
      tag: names[i].downcase,
      num_articles: 2,
      description_short: short_descriptions[i],
      description: short_descriptions[i],
      author: 'Vizvamitra',
      email: 'vizvamitra@gmail.com',
      created_at: Time.now.to_i
    }
    sites.insert(site)
  end
end