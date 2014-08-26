package com.edifylabs.noter;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONObject;
import org.json.JSONArray;
import org.json.JSONException;

public class TestPlugin extends CordovaPlugin {

	public static final String ACTION_ADD_ENTRY = "addEntry";
	public static final String DO_IT ="this plugin rocks!";
	
	@Override
	public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
            callbackContext.success("Message returned by Android plugin");
            return true;		    
		} catch(Exception e) {
		    System.err.println("Exception: " + e.getMessage());
		    callbackContext.error(e.getMessage());
		    return false;
		} 
		
	}
	
}
