package com.umeng.commonsdk.utils;

import java.util.Comparator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JSONArraySortUtil implements Comparator<JSONObject> {
    public String mCompareKey;

    public void setCompareKey(String str) {
        this.mCompareKey = str;
    }

    public int compare(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            return (int) (jSONObject.getLong(this.mCompareKey) - jSONObject2.getLong(this.mCompareKey));
        } catch (JSONException e2) {
            e2.printStackTrace();
            return 0;
        }
    }
}
