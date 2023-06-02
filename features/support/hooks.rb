#AfterStep do
#  if page.has_selector?("div[aria-label='Cerrar anuncio']")
#    find("div[aria-label='Cerrar anuncio']").click
#    puts "Anuncio cerrado después del paso"
#  elsif page.has_selector?("div[aria-label='Close ad']")
#    find("div[aria-label='Close ad']").click
#    puts "Anuncio cerrado después del paso"
#  else
#    puts "No se cerro ningun anuncio después del paso"
#  end
#end

#AfterStep do
#  if page.has_css?("div[aria-label='Cerrar anuncio']")
#    find("div[aria-label='Cerrar anuncio']").click
#    puts "Anuncio cerrado después del paso"
#  elsif page.has_css?("div[aria-label='Close ad']")
#    find("div[aria-label='Close ad']").click
#    puts "Anuncio cerrado después del paso"
#  else
#    puts "No se cerro ningun anuncio después del paso"
#  end
#end

#AfterStep do
#  if page.has_css?('iframe#ad_iframe')
#    within_frame('ad_iframe') do
#      find("div[aria-label='Cerrar anuncio']").click
#      puts "Anuncio cerrado después del paso"
#    end
#  else
#    puts "No se cerró ningún anuncio después del paso"
#  end
#end