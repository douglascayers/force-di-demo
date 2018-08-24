
public with sharing class di_ChatAppModule extends di_Module {

    public override void configure() {

        Integer count = [
            SELECT
                COUNT()
            FROM
                OutOfOffice
            WHERE
                UserId = :UserInfo.getUserId()
                AND
                IsEnabled = true
        ];

        if ( count > 0 ) {
            bind('ChatAppMessage').to(VacationMessage.class);
        } else {
            bind('ChatAppMessage').to(WorkingMessage.class);
        }

    }

}