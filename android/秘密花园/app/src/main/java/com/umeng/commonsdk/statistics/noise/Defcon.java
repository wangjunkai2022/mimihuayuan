package com.umeng.commonsdk.statistics.noise;

import android.content.Context;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.d;

/* loaded from: classes.dex */
public class Defcon implements d {
    public static final int LEVEL_0 = 0;
    public static final int LEVEL_1 = 1;
    public static final int LEVEL_2 = 2;
    public static final int LEVEL_3 = 3;
    public static final long MILLIS_24_HOURS = 86400000;
    public static final long MILLIS_4_HOURS = 14400000;
    public static final long MILLIS_8_HOURS = 28800000;
    public static Defcon instanse;
    public int mLevel = 0;

    public static synchronized Defcon getService(Context context) {
        Defcon defcon;
        synchronized (Defcon.class) {
            if (instanse == null) {
                instanse = new Defcon();
                instanse.setLevel(Integer.valueOf(UMEnvelopeBuild.imprintProperty(context, "defcon", "0")).intValue());
            }
            defcon = instanse;
        }
        return defcon;
    }

    public int getLevel() {
        return this.mLevel;
    }

    public long getReqInterval() {
        int i2 = this.mLevel;
        if (i2 == 1) {
            return MILLIS_4_HOURS;
        }
        if (i2 != 2) {
            return i2 != 3 ? 0 : 86400000;
        }
        return MILLIS_8_HOURS;
    }

    public long getRetryInterval() {
        return this.mLevel == 0 ? 0 : 300000;
    }

    public boolean isOpen() {
        return this.mLevel != 0;
    }

    @Override // com.umeng.commonsdk.statistics.internal.d
    public void onImprintChanged(ImprintHandler.a aVar) {
        setLevel(Integer.valueOf(aVar.a("defcon", String.valueOf(0))).intValue());
    }

    public void setLevel(int i2) {
        if (i2 >= 0 && i2 <= 3) {
            this.mLevel = i2;
        }
    }
}
