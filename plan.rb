require 'gn/dsl'

module Plan
  class App
    def ruby_version
      '2.1.5'
    end

    def author
      'jvillarejo'
    end

    def email
      'juan@sinrutina.com'
    end

    def name
      'MyWebApp'
    end

    def domain
      'mywebapp.com'
    end

    def deploy_to
      "/home/repoman/apps/#{name}"
    end

    def repository
      "git@github.com:sinrutina/#{name}.git"
    end

    def destination
      "#{folder_name}/app.rb"
    end

    def folder_name
      name
    end
  end

  class Gemfile < App
    def destination
      "#{folder_name}/Gemfile"
    end
  end

  class Config < App
    def destination
      "#{folder_name}/config.ru"
    end
  end

  class Domain < App
    def destination
      "#{folder_name}/domain/.gitkeep"
    end
  end

  class Gitignore < App
    def destination
      "#{folder_name}/.gitignore"
    end
  end

  class Deploy < App
    def destination
      "#{folder_name}/config/deploy.rb"
    end
  end

  class Puma < App
    def destination
      "#{folder_name}/config/puma.rb"
    end
  end

  class Log < App
    def destination
      "#{folder_name}/log/.gitkeep"
    end
  end

  class SpecHelper < App
    def destination
      "#{folder_name}/spec/spec_helper.rb"
    end
  end

  class Features < App
    def destination
      "#{folder_name}/spec/features/.gitkeep"
    end
  end

  class Server < App
    def destination
      "#{folder_name}/tmp/server/.gitkeep"
    end
  end

  class RubyVersion < App
    def destination
      "#{folder_name}/.ruby-version"
    end
  end

  class Env < App
    def destination
      "#{folder_name}/.env"
    end
  end

  class Procfile < App
    def destination
      "#{folder_name}/Procfile"
    end
  end
end
