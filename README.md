# Pauliceia 2.0 acceptance tests
This repo contains some acceptance tests for the Pauliceia 2.0 (https://pauliceia.unifesp.br/),
including two login tests, and a few tests for the waypoint search engine.

![image](https://github.com/yassudaAug/pauliceia-acceptance-tests/assets/101128510/1610f0ae-5c0a-4f30-9359-bfe50e3f70af)


# Dependencies
ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x64-mingw-ucrt]
Download link for ruby 3.2.2 : https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.2.2-1/rubyinstaller-devkit-3.2.2-1-x64.exe

ChromeDriver 119.0.6045.21 (c1a28afcf19a8c5835352fe900ab4be4507fb95a-refs/branch-heads/6045@{#340})
Download for ChromeDriver 119.0.6045.21: https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/119.0.6045.21/win64/chromedriver-win64.zip

gems:
source "https://rubygems.org"
gem 'cucumber', '~> 9.1'
gem 'capybara', '~> 3.39', '>= 3.39.2'
gem 'selenium-webdriver', '~> 4.16'
gem 'site_prism', '~> 4.0', '>= 4.0.3'
gem 'rspec', '~> 3.12'
