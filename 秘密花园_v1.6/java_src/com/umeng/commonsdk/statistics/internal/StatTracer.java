package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.statistics.common.MLog;
/* loaded from: classes.dex */
public class StatTracer implements b {
    public static final String KEY_CLIENT_REQUEST_FAILED = "failed_requests ";
    public static final String KEY_CLIENT_REQUEST_LATENCY = "last_request_spent_ms";
    public static final String KEY_CLIENT_REQUEST_SUCCESS = "successful_request";
    public static final String KEY_CLIENT_REQUEST_TIME = "last_request_time";
    public static final String KEY_FIRST_ACTIVATE_TIME = "first_activate_time";
    public static final String KEY_LAST_REQ = "last_req";
    public static Context mContext;
    public final int MAX_REQUEST_LIMIT;
    public long firstActivateTime;
    public long lastRequestTime;
    public int mFailedRequest;
    public int mLastRequestLatency;
    public long mLastSuccessfulRequestTime;
    public int mSuccessfulRequest;

    /* loaded from: classes.dex */
    public static class a {
        public static final StatTracer a = new StatTracer();
    }

    public static StatTracer getInstance(Context context) {
        if (mContext == null) {
            if (context != null) {
                mContext = context.getApplicationContext();
            } else {
                MLog.e("inside StatTracer. please check context. context must not be null!");
            }
        }
        return a.a;
    }

    private void init() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(mContext);
        this.mSuccessfulRequest = sharedPreferences.getInt(KEY_CLIENT_REQUEST_SUCCESS, 0);
        this.mFailedRequest = sharedPreferences.getInt(KEY_CLIENT_REQUEST_FAILED, 0);
        this.mLastRequestLatency = sharedPreferences.getInt(KEY_CLIENT_REQUEST_LATENCY, 0);
        this.mLastSuccessfulRequestTime = sharedPreferences.getLong(KEY_CLIENT_REQUEST_TIME, 0L);
        this.lastRequestTime = sharedPreferences.getLong(KEY_LAST_REQ, 0L);
    }

    public long getFirstActivateTime() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(mContext);
        long j2 = PreferenceWrapper.getDefault(mContext).getLong("first_activate_time", 0L);
        this.firstActivateTime = j2;
        if (j2 == 0) {
            this.firstActivateTime = System.currentTimeMillis();
            sharedPreferences.edit().putLong("first_activate_time", this.firstActivateTime).commit();
        }
        return this.firstActivateTime;
    }

    public long getLastReqTime() {
        return this.lastRequestTime;
    }

    public int getLastRequestLatency() {
        int i2 = this.mLastRequestLatency;
        if (i2 > 3600000) {
            return 3600000;
        }
        return i2;
    }

    public boolean isFirstRequest() {
        return this.mLastSuccessfulRequestTime == 0;
    }

    public void logFailedRequest() {
        this.mFailedRequest++;
    }

    public void logRequestEnd() {
        this.mLastRequestLatency = (int) (System.currentTimeMillis() - this.lastRequestTime);
    }

    public void logRequestStart() {
        this.lastRequestTime = System.currentTimeMillis();
    }

    public void logSuccessfulRequest(boolean z) {
        this.mSuccessfulRequest++;
        if (z) {
            this.mLastSuccessfulRequestTime = this.lastRequestTime;
        }
    }

    @Override // com.umeng.commonsdk.statistics.internal.b
    public void onRequestEnd() {
        logRequestEnd();
    }

    @Override // com.umeng.commonsdk.statistics.internal.b
    public void onRequestFailed() {
        logFailedRequest();
    }

    @Override // com.umeng.commonsdk.statistics.internal.b
    public void onRequestStart() {
        logRequestStart();
    }

    @Override // com.umeng.commonsdk.statistics.internal.b
    public void onRequestSucceed(boolean z) {
        logSuccessfulRequest(z);
    }

    public void saveSate() {
        PreferenceWrapper.getDefault(mContext).edit().putInt(KEY_CLIENT_REQUEST_SUCCESS, this.mSuccessfulRequest).putInt(KEY_CLIENT_REQUEST_FAILED, this.mFailedRequest).putInt(KEY_CLIENT_REQUEST_LATENCY, this.mLastRequestLatency).putLong(KEY_LAST_REQ, this.lastRequestTime).putLong(KEY_CLIENT_REQUEST_TIME, this.mLastSuccessfulRequestTime).commit();
    }

    public StatTracer() {
        this.MAX_REQUEST_LIMIT = 3600000;
        this.lastRequestTime = 0L;
        this.firstActivateTime = 0L;
        init();
    }
}
