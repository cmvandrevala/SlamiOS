open class DefaultAddMatchInteractor : AddMatchInteractor {

    let view : AddMatchView
    let api : SlamAPI

    public init(view: AddMatchView, api: SlamAPI) {
        self.view = view
        self.api = api
    }

    open func attemptAdd(playerOne: String, playerTwo: String) {
        api.addMatch(playerOne,
            playerTwo: playerTwo,
            onSuccess: {() -> Void in
                self.view.matchWasAdded()
        })

    }

    open func validateInput(playerOne: String, playerTwo: String) {
        if (playerOne == "" || playerTwo == "") {
            view.inputIsInvalid()
        } else {
            view.inputIsValid()
        }
    }

}
