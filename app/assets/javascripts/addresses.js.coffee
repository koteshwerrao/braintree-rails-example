# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#address_region').parent().parent().hide()
  states = $('#address_region').html()
  $('#address_country_code_alpha2').change ->
    country = $('#address_country_code_alpha2 :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(states).filter("optgroup[label=#{escaped_country}]").html()
    if options
      $('#address_region').html(options)
      $('#address_region').parent().parent().show()
    else
      $('#address_region').empty()
      $('#address_region').parent().parent().hide()