public with sharing class WidgetInfoCustomVFProvider implements di_Binding.Provider {

    public Object newInstance( Object params ) {

        Map<String, Object> paramsMap = (Map<String, Object>) params;
        String recordId = (String) paramsMap.get('recordId');

        Widget__c record = [ SELECT Id, Name FROM Widget__c WHERE Id = :recordId LIMIT 1 ];

        return new Component.WidgetInfoCustomVF(
            recordId = record.Id,
            recordName = record.Name
        );
    }

}