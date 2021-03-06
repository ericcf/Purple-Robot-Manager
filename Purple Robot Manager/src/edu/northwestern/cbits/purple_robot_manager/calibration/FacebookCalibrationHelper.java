package edu.northwestern.cbits.purple_robot_manager.calibration;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import edu.northwestern.cbits.purple_robot_manager.R;
import edu.northwestern.cbits.purple_robot_manager.activities.probes.FacebookLoginActivity;
import edu.northwestern.cbits.purple_robot_manager.logging.SanityCheck;
import edu.northwestern.cbits.purple_robot_manager.logging.SanityManager;
import edu.northwestern.cbits.purple_robot_manager.probes.builtin.FacebookProbe;

public class FacebookCalibrationHelper 
{
	public static void check(final Context context) 
	{
		SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
		
		if (prefs.contains(FacebookProbe.TOKEN) == false)
		{
			final SanityManager sanity = SanityManager.getInstance(context);

			final String title = context.getString(R.string.title_facebook_check);
			String message = context.getString(R.string.message_facebook_check);
				
			Runnable action = new Runnable()
			{
				public void run() 
				{
					Intent intent = new Intent(context, FacebookLoginActivity.class);
					intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
					
					context.startActivity(intent);
				}
			};
				
			sanity.addAlert(SanityCheck.WARNING, title, message, action);
		}
	}
}
