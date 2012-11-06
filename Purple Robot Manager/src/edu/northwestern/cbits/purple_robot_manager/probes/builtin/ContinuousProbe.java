package edu.northwestern.cbits.purple_robot_manager.probes.builtin;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.Context;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import edu.northwestern.cbits.purple_robot_manager.probes.Probe;

public abstract class ContinuousProbe extends Probe
{
	public abstract String name(Context context);

	public String title(Context context)
	{
		return this.name(context);
	}

	public abstract String probeCategory(Context context);

	public Bundle[] dataRequestBundles(Context context)
	{
		return new Bundle[0];
	}

	@SuppressWarnings("deprecation")
	public PreferenceScreen preferenceScreen(PreferenceActivity activity)
	{
		PreferenceManager manager = activity.getPreferenceManager();

		PreferenceScreen screen = manager.createPreferenceScreen(activity);
		screen.setTitle(this.title(activity));

		return screen;
	}

	public boolean isEnabled(Context context)
	{
		return true;
	}

	public void updateFromJSON(Context context, JSONObject json) throws JSONException
	{

	}
}