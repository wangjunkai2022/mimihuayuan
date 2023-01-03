package com.umeng.analytics.filter;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.utils.FileLockCallback;
import com.umeng.commonsdk.utils.FileLockUtil;
import com.umeng.commonsdk.utils.UMUtils;
import f.b.a.a.a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class EventList extends c implements FileLockCallback {
    public static final int DELETE_LIST_DATA = 2;
    public static final int LOAD_LIST_DATA = 1;
    public static final int SAVE_LIST_DATA = 0;
    public Context mAppContext;
    public String mEventList;
    public String mEventListKey;
    public String mEventListName;
    public String mEventListVersionKey;
    public FileLockUtil mFileLock = new FileLockUtil();

    public EventList(String str, String str2) {
        this.mEventListName = str;
        this.mEventListKey = str;
        this.mEventListVersionKey = str2;
    }

    private void deleteDataFile(File file) {
        if (this.mAppContext != null) {
            synchronized (this.mFileLock) {
                if (file.exists()) {
                    file.delete();
                }
            }
        }
    }

    private boolean loadEventListFromFile(Context context, File file) {
        boolean z;
        Throwable th;
        if (file.exists() && TextUtils.isEmpty(this.mEventList)) {
            try {
                try {
                    z = new BufferedReader(new FileReader(file));
                    try {
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String readLine = z.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb.append(readLine);
                        }
                        String sb2 = sb.toString();
                        if (!TextUtils.isEmpty(sb2)) {
                            String md5 = HelperUtils.getMD5(sb2);
                            String imprintProperty = UMEnvelopeBuild.imprintProperty(context, this.mEventListVersionKey, "");
                            this.mEventList = sb2;
                            eventListChange();
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> loadEventListFromFile: mEventList = " + this.mEventList);
                            if (!UMUtils.isMainProgress(context)) {
                                z = md5.equalsIgnoreCase(imprintProperty);
                                if (!z) {
                                    return false;
                                }
                                this.mEventList = sb2;
                                eventListChange();
                                try {
                                    z.close();
                                } catch (Throwable th2) {
                                    UMCrashManager.reportCrash(context, th2);
                                }
                                return true;
                            } else if (md5.equalsIgnoreCase(imprintProperty)) {
                                this.mEventList = sb2;
                                setMD5ClearFlag(false);
                                try {
                                    z.close();
                                } catch (Throwable th3) {
                                    UMCrashManager.reportCrash(context, th3);
                                }
                                return true;
                            } else {
                                setMD5ClearFlag(true);
                                try {
                                    z.close();
                                } catch (Throwable th4) {
                                    UMCrashManager.reportCrash(context, th4);
                                }
                                return false;
                            }
                        } else {
                            z.close();
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        try {
                            UMCrashManager.reportCrash(context, th);
                            if (z != null) {
                                z.close();
                            }
                            return false;
                        } finally {
                            if (z != null) {
                                try {
                                    z.close();
                                } catch (Throwable th6) {
                                    UMCrashManager.reportCrash(context, th6);
                                }
                            }
                        }
                    }
                } catch (Throwable th7) {
                    th = th7;
                    z = null;
                }
            } catch (Throwable th8) {
                UMCrashManager.reportCrash(context, th8);
            }
        }
        return false;
    }

    private void saveEventListToFile(Context context, File file) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(this.mEventList.getBytes());
            fileOutputStream.close();
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
        }
    }

    public boolean enabled() {
        synchronized (this) {
            if (this.mEventList == null) {
                return false;
            }
            return true;
        }
    }

    public void eventListChange() {
    }

    public boolean matchHit(String str) {
        return false;
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(File file, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                saveEventListToFile(this.mAppContext, file);
            }
        } else if (i2 == 1) {
            synchronized (this) {
                if (loadEventListFromFile(this.mAppContext, file)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> find event list data file, load it.");
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> can't find event list file.");
                }
            }
        } else if (i2 == 2) {
            synchronized (this) {
                this.mEventList = null;
                deleteDataFile(file);
            }
        }
        return true;
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(String str) {
        return false;
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(String str, Object obj) {
        return false;
    }

    @Override // com.umeng.analytics.filter.c, com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
    public void onImprintValueChanged(String str, String str2) {
        if ("ekv_bl_ver".equals(str) && str2 == null) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> disable black list for ekv.");
            this.mFileLock.doFileOperateion(new File(this.mAppContext.getFilesDir(), this.mEventListName), this, 2);
        }
        if ("ekv_wl_ver".equals(str) && str2 == null) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> disable white list for ekv.");
            this.mFileLock.doFileOperateion(new File(this.mAppContext.getFilesDir(), this.mEventListName), this, 2);
        }
    }

    @Override // com.umeng.analytics.filter.c, com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback
    public boolean onPreProcessImprintKey(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return true;
        }
        int length = str2.length();
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onPreProcessImprintKey: key = " + str + "; len of value=" + length);
        StringBuilder sb = new StringBuilder();
        sb.append("--->>> onPreProcessImprintKey: value = ");
        sb.append(str2);
        UMRTLog.i(UMRTLog.RTLOG_TAG, sb.toString());
        this.mEventList = str2;
        eventListChange();
        File file = new File(this.mAppContext.getFilesDir(), this.mEventListName);
        if (!file.exists()) {
            try {
                try {
                    file.createNewFile();
                } catch (IOException e2) {
                    UMCrashManager.reportCrash(this.mAppContext, e2);
                }
            } catch (IOException unused) {
                file.createNewFile();
            }
        }
        this.mFileLock.doFileOperateion(file, this, 0);
        setMD5ClearFlag(false);
        return true;
    }

    public void register(Context context) {
        if (this.mAppContext == null) {
            this.mAppContext = context.getApplicationContext();
        }
        File file = new File(this.mAppContext.getFilesDir(), this.mEventListName);
        if (!TextUtils.isEmpty(UMEnvelopeBuild.imprintProperty(this.mAppContext, this.mEventListVersionKey, ""))) {
            if (file.exists()) {
                this.mFileLock.doFileOperateion(file, this, 1);
            } else {
                setMD5ClearFlag(true);
            }
        }
        if (UMUtils.isMainProgress(this.mAppContext)) {
            ImprintHandler.getImprintService(this.mAppContext).registPreProcessCallback(this.mEventListKey, this);
            ImprintHandler.getImprintService(this.mAppContext).registImprintCallback(this.mEventListVersionKey, this);
        }
    }

    public void setMD5ClearFlag(boolean z) {
    }

    public String toString() {
        if (TextUtils.isEmpty(this.mEventListName) || TextUtils.isEmpty(this.mEventListKey)) {
            return "Uninitialized EventList.";
        }
        StringBuilder sb = new StringBuilder("[");
        StringBuilder o = a.o("EventListName:");
        o.append(this.mEventListName);
        o.append(",");
        sb.append(o.toString());
        sb.append("listKey:" + this.mEventListKey + ",");
        if (!TextUtils.isEmpty(this.mEventList)) {
            StringBuilder o2 = a.o("listKeyValue:");
            o2.append(this.mEventList);
            o2.append("]");
            sb.append(o2.toString());
        } else {
            sb.append("listKeyValue:empty,");
        }
        if (!TextUtils.isEmpty(this.mEventListVersionKey)) {
            StringBuilder o3 = a.o("listKeyVer:");
            o3.append(this.mEventListVersionKey);
            o3.append("]");
            sb.append(o3.toString());
        } else {
            sb.append("listKeyVer:empty]");
        }
        return sb.toString();
    }
}
