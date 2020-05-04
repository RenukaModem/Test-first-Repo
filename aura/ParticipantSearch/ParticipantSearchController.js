({
	init : function(cmp, event, helper) {
		helper.getSearchFeatureAccess(cmp, event, helper);
	},

	searchParticipants : function(cmp, event, helper) {
		helper.search(cmp, event, helper);
	},

	handleResults : function(cmp, event, helper) {
		helper.setAccountId(cmp, helper);
		if(cmp.get("v.participantId").length > 0) {
			helper.requestParticipationsByAccountId(cmp, helper);
		} else {
			helper.noParticipationsFound(cmp);
			helper.searchComplete(cmp);
		}
	}
})