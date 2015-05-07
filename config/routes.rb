Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky" })

  get("/lucky_numbers",   { :controller => "fortunes", :action => "lucky" })
  get("/unlucky_numbers", { :controller => "fortunes", :action => "unlucky" })

  # VARIABLE ROUTES
  # =======================

  get("/signs/:the_sign",         { :controller => "zodiacs", :action => "sign" })
  get("/zodiacs/find",         { :controller => "zodiacs", :action => "find" })

  get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })
  get("/zodiacs/new",         { :controller => "zodiacs", :action => "new_form" })
  get("/zodiacs/delete/:the_id",         { :controller => "zodiacs", :action => "delete" })

  get("/create_zodiac",         { :controller => "zodiacs", :action => "create_row" })

  get("/zodiacs/id",         { :controller => "zodiacs", :action => "find_id" })
    get("/zodiacs/find_id",         { :controller => "zodiacs", :action => "get_id" })

    get("/zodiacs/:the_id",         { :controller => "zodiacs", :action => "id" })
    get("/zodiacs",         { :controller => "zodiacs", :action => "index" })

      get("/:firstin/:lastin", { :controller => "fortunes", :action =>"random"})

end
