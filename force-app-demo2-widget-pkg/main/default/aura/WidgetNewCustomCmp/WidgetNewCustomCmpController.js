({
    handleSubmit: function( component, event, helper ) {
        var response = event.getParams();
        $A.get('e.force:navigateToSObject').setParams({
            'recordId' : response.id
        }).fire();
    }
})