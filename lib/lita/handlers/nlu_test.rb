module Lita
  module Handlers
    class NluTest < Handler
      # insert handler code here
      route(:greet, intent: true) do |response|
        response.reply("hola hola")
      end

      route(:goodbye, command:true, intent: true) do |response|
        response.reply("chao sapo")
      end


      route(/^(abre|caca)/) do |response|
        response.reply("abri")
      end

      Lita.register_handler(self)
    end
  end
end