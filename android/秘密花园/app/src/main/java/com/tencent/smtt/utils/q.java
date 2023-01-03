package com.tencent.smtt.utils;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import com.tencent.smtt.sdk.TbsConfig;
import java.io.File;

/* compiled from: TbsUtils.java */
/* loaded from: classes.dex */
public class q {
    public static File a;

    public static long a() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks());
    }

    @TargetApi(9)
    public static boolean a(Context context) {
        File dir;
        if (context == null) {
            return false;
        }
        if (a != null) {
            return true;
        }
        try {
            if (context.getApplicationInfo().processName.contains(TbsConfig.APP_WX) && (dir = context.getDir("tbs", 0)) != null && dir.isDirectory()) {
                File file = new File(dir, "share");
                if (!file.isDirectory() && !file.mkdir()) {
                    return false;
                }
                a = file;
                file.setExecutable(true, false);
                return true;
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
