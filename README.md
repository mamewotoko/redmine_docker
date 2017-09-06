Redmine on docker
=================

Contents
--------
* library
  * new redmine
* backlogs
  * redmine_backlogs plugin is installed

Mail server setting
-------------------
1. edit config/configuration.yml in redmine container
e.g. gmail

```
default:
  # Outgoing emails configuration
  # See the examples below and the Rails guide for more configuration options:
  # http://guides.rubyonrails.org/action_mailer_basics.html#action-mailer-configuration

  email_delivery:
    delivery_method: :smtp
    smtp_settings:
      enable_starttls_auto: true
      address: "smtp.gmail.com"
      port: 587
      domain: "smtp.gmail.com" # 'your.domain.com' for GoogleApps
      authentication: :plain
      user_name: "your_username@gmail.com"
      # google app password genereted by following web page
      # https://security.google.com/settings/security/apppasswords
      password: "xxxxxxxxxxxx"
```

2. restart redmine container

Redmine setting checklist
-------------------------
- [ ] General -> Text formatting: Markkdown
- [ ] General -> Host name and path
- [ ] Display -> Theme
- [ ] Display -> DHPRoject menu tab for creating new objects: none

----
Takashi Masuyama < mamewotoko@gmail.com >
http://mamewo.ddo.jp/
