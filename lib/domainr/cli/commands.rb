# coding: utf-8

module Domainr
  module CLI
    class Commands < ::Thor
      include Hirb::Console

      package_name 'domainr-cli'

      desc 'info', 'Request info on the specified domain'
      def info(query)
        ap client.info(query)
      end

      desc 'search', 'Query for availability on domains matching the provided keyword'
      def search(query)
        client.search(query).results.tap do |results|
          available, unavailable = results.map! { |res|
            res.suggestion = "#{res.domain.bold}#{res.path.underline}"
            res
          }.partition { |res| res.availability == 'available' }

          available.map! { |res| res.available = '✔'.green; res }
          unavailable.map! { |res| res.available = '✗'.red; res }

          table available + unavailable,
                fields: [:suggestion, :available],
                unicode: true
        end
      end

      private

      def client
        @client ||= begin
          Domainr.client_id = 'd03a6364139c4b32bb969d45db549b10'
          Domainr
        end
      end
    end
  end
end
