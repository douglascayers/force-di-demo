public with sharing class WidgetInfoController {

    public Map<String, Object> flowInputVariables { get; set; }

    public WidgetInfoController( ApexPages.StandardController stdController ) {
        this.flowInputVariables = new Map<String, Object>{
            'recordId' => stdController.getId()
        };
    }

}