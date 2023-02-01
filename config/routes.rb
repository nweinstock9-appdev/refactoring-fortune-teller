Rails.application.routes.draw do  
  # PART 1: EACH IN ERB
  # ===================

  get("/", { :controller => "lottery", :action => "lucky"})
  get("/lottery/lucky", { :controller => "lottery", :action => "lucky"})
  get("/lottery/unlucky", { :controller => "lottery", :action => "unlucky"})

  # Refactoring Fortune Teller

  get("/roll/:number_of_dice/:number_of_sides", { :controller => "dice", :action => "infinity_and_beyond" })

  # Refactoring Horoscopes

  get("/zodiacs/:the_sign", { :controller => "application", :action => "horoscopes" })
end
