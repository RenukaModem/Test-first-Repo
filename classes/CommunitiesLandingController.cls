//Testing

/**
 * An apex page controller that takes the user to the right start page based on credentials or lack thereof
 */
 
 // Testing Class file1212312323223
// Re-Testing Class file 
public with sharing class CommunitiesLandingController {
    
    // Code we will invoke on page load.
    public PageReference forwardToStartPage() {
        return Network.communitiesLanding();
    }
    
    public CommunitiesLandingController() {}
}