package com.tencent.smtt.utils;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import androidx.multidex.MultiDexExtractor;
import java.io.File;
import java.io.FileFilter;
/* compiled from: TbsCheckUtils.java */
/* loaded from: classes.dex */
public class m {
    public static boolean a(Context context) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return b(context);
        }
        return true;
    }

    public static boolean b(Context context) {
        File c2;
        File[] listFiles;
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (Build.VERSION.SDK_INT <= 25 && (c2 = c(context)) != null) {
            for (File file : c2.listFiles(new FileFilter() { // from class: com.tencent.smtt.utils.m.1
                @Override // java.io.FileFilter
                public boolean accept(File file2) {
                    String name = file2.getName();
                    return !TextUtils.isEmpty(name) && name.endsWith(MultiDexExtractor.DEX_SUFFIX);
                }
            })) {
                if (file.isFile() && file.exists()) {
                    if (a(file)) {
                        TbsLog.w("TbsCheckUtils", "" + file + " is invalid --> check failed!");
                        file.delete();
                        return false;
                    }
                    TbsLog.i("TbsCheckUtils", "" + file + " #4 check success!");
                }
            }
            TbsLog.i("TbsCheckUtils", "checkTbsValidity -->#5 check ok!");
            return true;
        }
        return true;
    }

    public static File c(Context context) {
        File file = new File(context.getDir("tbs", 0), "core_share");
        if (file.isDirectory() && file.exists()) {
            return file;
        }
        return null;
    }

    public static boolean a(File file) {
        try {
            return !e.b(file);
        } catch (Throwable th) {
            f.b.a.a.a.z("isOatFileBroken exception: ", th);
            return false;
        }
    }
}
