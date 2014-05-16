class NavbarCtrl extends BaseCtrl
  @inject '$scope', '$translate'

  currentLanguage: ->
    "languages.#{@$translate.use()}"

  changeLanguage: (language) =>
    @$translate.use(language)
