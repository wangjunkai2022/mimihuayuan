package com.umeng.commonsdk.framework;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserModel;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public class UMFrUtils {
    public static final String KEY_LAST_INSTANT_SUCC_BUILD_TIME = "last_instant_build_time";
    public static final String KEY_LAST_SUCC_BUILD_TIME = "last_successful_build_time";
    public static String mDefaultEnvelopeDir = "envelope";
    public static String mDefaultEnvelopeDirPath;
    public static Object mEnvelopeBuildTimeLock = new Object();
    public static Object mEnvelopeFileLock = new Object();

    public static boolean checkPermission(Context context, String str) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    if (((Integer) Class.forName("android.content.Context").getMethod("checkSelfPermission", String.class).invoke(context, str)).intValue() != 0) {
                        return false;
                    }
                } catch (Throwable th) {
                    UMCrashManager.reportCrash(applicationContext, th);
                    return false;
                }
            } else {
                try {
                    if (applicationContext.getPackageManager().checkPermission(str, applicationContext.getPackageName()) != 0) {
                        return false;
                    }
                } catch (Throwable th2) {
                    UMCrashManager.reportCrash(applicationContext, th2);
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public static int envelopeFileNumber(Context context) {
        String[] list;
        if (context != null) {
            try {
                File file = new File(getEnvelopeDirPath(context));
                synchronized (mEnvelopeFileLock) {
                    if (file.isDirectory() && (list = file.list()) != null) {
                        return list.length;
                    }
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(context, th);
            }
        }
        return 0;
    }

    public static String getCreateTimeFromFileName(String str) {
        Context appContext = UMModuleRegister.getAppContext();
        if (!TextUtils.isEmpty(str)) {
            int indexOf = str.indexOf(95) + 1;
            try {
                return str.substring(indexOf, str.indexOf(95, indexOf));
            } catch (IndexOutOfBoundsException e2) {
                UMCrashManager.reportCrash(appContext, e2);
            }
        }
        return "";
    }

    public static String getCurrentProcessName(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            int myPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null || runningAppProcesses.size() <= 0) {
                return "";
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
            return "";
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context.getApplicationContext(), th);
            return "";
        }
    }

    public static long getDistanceDays(long j2, long j3) {
        return (j2 < j3 ? j3 - j2 : j2 - j3) / 86400000;
    }

    public static String getEnvelopeDirPath(Context context) {
        String str;
        synchronized (mEnvelopeFileLock) {
            try {
                if (mDefaultEnvelopeDirPath == null) {
                    mDefaultEnvelopeDirPath = context.getFilesDir().getAbsolutePath() + "/." + mDefaultEnvelopeDir;
                }
                File file = new File(mDefaultEnvelopeDirPath);
                if (!file.exists() && !file.mkdir()) {
                    ULog.d("--->>> Create Envelope Directory failed!!!");
                }
                str = mDefaultEnvelopeDirPath;
            }
        }
        return str;
    }

    public static File getEnvelopeFile(final Context context) {
        if (context == null) {
            return null;
        }
        File file = new File(getEnvelopeDirPath(context));
        synchronized (mEnvelopeFileLock) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length != 0) {
                Arrays.sort(listFiles, new Comparator<File>() { // from class: com.umeng.commonsdk.framework.UMFrUtils.2
                    @Override // java.util.Comparator
                    /* renamed from: a */
                    public int compare(File file2, File file3) {
                        String name = file2.getName();
                        String name2 = file3.getName();
                        String createTimeFromFileName = UMFrUtils.getCreateTimeFromFileName(name);
                        String createTimeFromFileName2 = UMFrUtils.getCreateTimeFromFileName(name2);
                        if (!TextUtils.isEmpty(createTimeFromFileName) && !TextUtils.isEmpty(createTimeFromFileName2)) {
                            try {
                                int i2 = ((Long.valueOf(createTimeFromFileName).longValue() - Long.valueOf(createTimeFromFileName2).longValue()) > 0L ? 1 : ((Long.valueOf(createTimeFromFileName).longValue() - Long.valueOf(createTimeFromFileName2).longValue()) == 0L ? 0 : -1));
                                if (i2 > 0) {
                                    return 1;
                                }
                                return i2 == 0 ? 0 : -1;
                            } catch (NumberFormatException e2) {
                                UMCrashManager.reportCrash(context, e2);
                            }
                        }
                        return 1;
                    }
                });
                return listFiles[0];
            }
            return null;
        }
    }

    public static long getLastInstantBuildTime(Context context) {
        long j2;
        synchronized (mEnvelopeBuildTimeLock) {
            j2 = PreferenceWrapper.getDefault(context).getLong(KEY_LAST_INSTANT_SUCC_BUILD_TIME, 0L);
        }
        return j2;
    }

    public static long getLastSuccessfulBuildTime(Context context) {
        long j2;
        synchronized (mEnvelopeBuildTimeLock) {
            j2 = PreferenceWrapper.getDefault(context).getLong(KEY_LAST_SUCC_BUILD_TIME, 0L);
        }
        return j2;
    }

    public static String getLegacyEnvelopeDir(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        if (activityManager != null) {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                ULog.d("--->>> getEnvelopeDir: can't get process name, use default envelope directory.");
                return mDefaultEnvelopeDir;
            } else if (runningAppProcesses.size() == 0) {
                return mDefaultEnvelopeDir;
            } else {
                try {
                    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                        if (runningAppProcessInfo.pid == Process.myPid()) {
                            String replace = runningAppProcessInfo.processName.replace(':', '_');
                            ULog.d("--->>> getEnvelopeDir: use current process name as envelope directory.");
                            return replace;
                        }
                    }
                } catch (Throwable th) {
                    UMCrashManager.reportCrash(context, th);
                }
            }
        }
        return mDefaultEnvelopeDir;
    }

    public static String getSubProcessName(Context context) {
        try {
            String currentProcessName = getCurrentProcessName(context);
            int indexOf = currentProcessName.indexOf(":");
            return indexOf < 0 ? currentProcessName.substring(context.getPackageName().length() + 1, currentProcessName.length()) : indexOf >= 0 ? currentProcessName.substring(indexOf + 1) : "";
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context.getApplicationContext(), th);
            return "";
        }
    }

    public static boolean hasEnvelopeFile(Context context, UMLogDataProtocol.UMBusinessType uMBusinessType) {
        String str = uMBusinessType == UMLogDataProtocol.UMBusinessType.U_INTERNAL ? e.aq : "a";
        File file = new File(getEnvelopeDirPath(context));
        synchronized (mEnvelopeFileLock) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length != 0) {
                for (File file2 : listFiles) {
                    if (file2.getName().startsWith(str)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
    }

    public static boolean isOnline(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        try {
            if (!checkPermission(context, "android.permission.ACCESS_NETWORK_STATE") || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isConnectedOrConnecting();
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context.getApplicationContext(), th);
            return false;
        }
    }

    public static boolean removeEnvelopeFile(File file) {
        UMModuleRegister.getAppContext();
        synchronized (mEnvelopeFileLock) {
            if (file != null) {
                if (file.exists()) {
                    return file.delete();
                }
            }
            return true;
        }
    }

    public static void removeRedundantEnvelopeFiles(final Context context, int i2) {
        File file = new File(getEnvelopeDirPath(context));
        synchronized (mEnvelopeFileLock) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length > i2) {
                Arrays.sort(listFiles, new Comparator<File>() { // from class: com.umeng.commonsdk.framework.UMFrUtils.1
                    @Override // java.util.Comparator
                    /* renamed from: a */
                    public int compare(File file2, File file3) {
                        String name = file2.getName();
                        String name2 = file3.getName();
                        String createTimeFromFileName = UMFrUtils.getCreateTimeFromFileName(name);
                        String createTimeFromFileName2 = UMFrUtils.getCreateTimeFromFileName(name2);
                        if (!TextUtils.isEmpty(createTimeFromFileName) && !TextUtils.isEmpty(createTimeFromFileName2)) {
                            try {
                                int i3 = ((Long.valueOf(createTimeFromFileName).longValue() - Long.valueOf(createTimeFromFileName2).longValue()) > 0L ? 1 : ((Long.valueOf(createTimeFromFileName).longValue() - Long.valueOf(createTimeFromFileName2).longValue()) == 0L ? 0 : -1));
                                if (i3 > 0) {
                                    return 1;
                                }
                                return i3 == 0 ? 0 : -1;
                            } catch (NumberFormatException e2) {
                                UMCrashManager.reportCrash(context, e2);
                            }
                        }
                        return 1;
                    }
                });
                if (listFiles.length > i2) {
                    for (int i3 = 0; i3 < listFiles.length - i2; i3++) {
                        if (!listFiles[i3].delete()) {
                            ULog.d("--->>> remove [" + i3 + "] file fail.");
                        }
                    }
                }
            }
        }
    }

    public static int saveEnvelopeFile(Context context, String str, byte[] bArr) {
        FileOutputStream fileOutputStream;
        if (bArr == null) {
            return 101;
        }
        File file = new File(getEnvelopeDirPath(context) + "/" + str);
        synchronized (mEnvelopeFileLock) {
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    fileOutputStream.write(bArr);
                    fileOutputStream.close();
                    boolean a = com.umeng.commonsdk.statistics.internal.a.a(context).a(str);
                    boolean b = com.umeng.commonsdk.statistics.internal.a.a(context).b(str);
                    if (a) {
                        updateLastSuccessfulBuildTime(context);
                    }
                    if (b) {
                        updateLastInstantBuildTime(context);
                    }
                    return 0;
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream2 = fileOutputStream;
                    UMCrashManager.reportCrash(context, e);
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                    return 101;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
            }
        }
    }

    public static void syncLegacyEnvelopeIfNeeded(Context context) {
        if (context == null) {
            return;
        }
        try {
            String legacyEnvelopeDir = getLegacyEnvelopeDir(context);
            if (TextUtils.isEmpty(legacyEnvelopeDir) || legacyEnvelopeDir.equals(mDefaultEnvelopeDir)) {
                return;
            }
            File file = new File(context.getFilesDir().getAbsolutePath() + "/." + legacyEnvelopeDir);
            if (file.exists()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length != 0) {
                    String envelopeDirPath = getEnvelopeDirPath(context);
                    for (int i2 = 0; i2 < listFiles.length; i2++) {
                        File file2 = listFiles[i2];
                        file2.renameTo(new File(envelopeDirPath + "/" + listFiles[i2].getName()));
                    }
                    if (file.isDirectory()) {
                        file.delete();
                    }
                } else if (file.isDirectory()) {
                    file.delete();
                }
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
        }
    }

    public static byte[] toByteArray(String str) throws IOException {
        byte[] bArr;
        Context appContext = UMModuleRegister.getAppContext();
        synchronized (mEnvelopeFileLock) {
            try {
                try {
                    FileChannel channel = new RandomAccessFile(str, "r").getChannel();
                    MappedByteBuffer load = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()).load();
                    PrintStream printStream = System.out;
                    load.isLoaded();
                    bArr = new byte[(int) channel.size()];
                    if (load.remaining() > 0) {
                        load.get(bArr, 0, load.remaining());
                    }
                    channel.close();
                }
            } catch (IOException e2) {
                UMCrashManager.reportCrash(appContext, e2);
                throw e2;
            }
        }
        return bArr;
    }

    public static void updateLastInstantBuildTime(Context context) {
        synchronized (mEnvelopeBuildTimeLock) {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            sharedPreferences.edit().putLong(KEY_LAST_INSTANT_SUCC_BUILD_TIME, System.currentTimeMillis()).commit();
        }
    }

    public static void updateLastSuccessfulBuildTime(Context context) {
        synchronized (mEnvelopeBuildTimeLock) {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            sharedPreferences.edit().putLong(KEY_LAST_SUCC_BUILD_TIME, System.currentTimeMillis()).commit();
        }
    }
}
