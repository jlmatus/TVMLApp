var Presenter = { 
    makeDocument: function (resource) {
        if (!Presenter.parser) {
            Presenter.parser = new DOMParser();
        }
        
        var doc = Presenter.parser.parseFromString(resource, "application/xml");
        return doc;
    },
    
    modalDialogPresenter: function (xml) {
        navigationDocument.presentModel(xml);
    },
    
    pushDocument: function (xml) {
        navigationDocument.pushDocument(xml);
    },
    
    load: function (event) {
        var self = this;
        var element = event.target;
    }
};