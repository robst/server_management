window.findModal = ->
  $ '#modal'

window.showModal = (content) ->
  modal = findModal()
  modal.html content
  modal.modal 'show'
  modal

window.hideModal = ->
  findModal().modal 'hide'
  return


