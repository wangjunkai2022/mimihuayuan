package com.tencent.smtt.utils;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import android.widget.TextView;
import com.tencent.smtt.sdk.TbsConfig;
import java.io.File;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class TbsLog {
    public static final int TBSLOG_CODE_SDK_BASE = 1000;
    public static final int TBSLOG_CODE_SDK_CONFLICT_X5CORE = 993;
    public static final int TBSLOG_CODE_SDK_INIT = 999;
    public static final int TBSLOG_CODE_SDK_INVOKE_ERROR = 997;
    public static final int TBSLOG_CODE_SDK_LOAD_ERROR = 998;
    public static final int TBSLOG_CODE_SDK_NO_SHARE_X5CORE = 994;
    public static final int TBSLOG_CODE_SDK_SELF_MODE = 996;
    public static final int TBSLOG_CODE_SDK_THIRD_MODE = 995;
    public static final int TBSLOG_CODE_SDK_UNAVAIL_X5CORE = 992;
    public static final String X5LOGTAG = "x5logtag";
    public static boolean a = false;
    public static boolean b = true;

    /* renamed from: c  reason: collision with root package name */
    public static TbsLogClient f2683c;
    public static List<String> sTbsLogList = new LinkedList();
    public static int sLogMaxCount = 10;

    public static void addLog(int i2, String str, Object... objArr) {
        synchronized (sTbsLogList) {
            try {
                if (sTbsLogList.size() > sLogMaxCount) {
                    int size = sTbsLogList.size() - sLogMaxCount;
                    while (true) {
                        int i3 = size - 1;
                        if (size <= 0 || sTbsLogList.size() <= 0) {
                            break;
                        }
                        sTbsLogList.remove(0);
                        size = i3;
                    }
                }
                String str2 = null;
                if (str != null) {
                    try {
                        str2 = String.format(str, objArr);
                    } catch (Exception unused) {
                    }
                }
                if (str2 == null) {
                    str2 = "";
                }
                sTbsLogList.add(String.format("[%d][%d][%c][%d]%s", Long.valueOf(System.currentTimeMillis()), 1, '0', Integer.valueOf(i2), str2));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void app_extra(String str, Context context) {
        try {
            Context applicationContext = context.getApplicationContext();
            String[] strArr = {TbsConfig.APP_DEMO, TbsConfig.APP_QB, TbsConfig.APP_WX, TbsConfig.APP_QQ, TbsConfig.APP_DEMO_TEST, TbsConfig.APP_QZONE};
            String[] strArr2 = {"DEMO", "QB", "WX", "QQ", "TEST", "QZ"};
            int i2 = 0;
            while (true) {
                if (i2 >= 6) {
                    break;
                } else if (applicationContext.getPackageName().contains(strArr[i2])) {
                    i(str, "app_extra pid:" + Process.myPid() + "; APP_TAG:" + strArr2[i2] + "!");
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == 6) {
                i(str, "app_extra pid:" + Process.myPid() + "; APP_TAG:OTHER!");
            }
        } catch (Throwable th) {
            StringBuilder o = f.b.a.a.a.o("app_extra exception:");
            o.append(Log.getStackTraceString(th));
            w(str, o.toString());
        }
    }

    public static void d(String str, String str2) {
        TbsLogClient tbsLogClient = f2683c;
        if (tbsLogClient == null) {
            return;
        }
        tbsLogClient.d(str, "TBS:" + str2);
    }

    public static void e(String str, String str2) {
        TbsLogClient tbsLogClient = f2683c;
        if (tbsLogClient == null) {
            return;
        }
        tbsLogClient.e(str, "TBS:" + str2);
        TbsLogClient tbsLogClient2 = f2683c;
        tbsLogClient2.writeLog("(E)-" + str + "-TBS:" + str2);
    }

    public static String getTbsLogFilePath() {
        File file = TbsLogClient.f2684c;
        if (file != null) {
            return file.getAbsolutePath();
        }
        return null;
    }

    public static void i(String str, String str2) {
        TbsLogClient tbsLogClient = f2683c;
        if (tbsLogClient == null) {
            return;
        }
        tbsLogClient.i(str, "TBS:" + str2);
        TbsLogClient tbsLogClient2 = f2683c;
        tbsLogClient2.writeLog("(I)-" + str + "-TBS:" + str2);
    }

    public static synchronized void initIfNeed(Context context) {
        synchronized (TbsLog.class) {
            if (f2683c == null) {
                setTbsLogClient(new TbsLogClient(context));
            }
        }
    }

    public static void setLogView(TextView textView) {
        TbsLogClient tbsLogClient;
        if (textView == null || (tbsLogClient = f2683c) == null) {
            return;
        }
        tbsLogClient.setLogView(textView);
    }

    public static boolean setTbsLogClient(TbsLogClient tbsLogClient) {
        if (tbsLogClient == null) {
            return false;
        }
        f2683c = tbsLogClient;
        TbsLogClient.setWriteLogJIT(b);
        return true;
    }

    public static void setWriteLogJIT(boolean z) {
        b = z;
        if (f2683c == null) {
            return;
        }
        TbsLogClient.setWriteLogJIT(z);
    }

    public static void v(String str, String str2) {
        TbsLogClient tbsLogClient = f2683c;
        if (tbsLogClient == null) {
            return;
        }
        tbsLogClient.v(str, "TBS:" + str2);
    }

    public static void w(String str, String str2) {
        TbsLogClient tbsLogClient = f2683c;
        if (tbsLogClient == null) {
            return;
        }
        tbsLogClient.w(str, "TBS:" + str2);
        TbsLogClient tbsLogClient2 = f2683c;
        tbsLogClient2.writeLog("(W)-" + str + "-TBS:" + str2);
    }

    public static synchronized void writeLogToDisk() {
        synchronized (TbsLog.class) {
            if (f2683c != null) {
                f2683c.writeLogToDisk();
            }
        }
    }

    public static void d(String str, String str2, boolean z) {
        d(str, str2);
        TbsLogClient tbsLogClient = f2683c;
        if (tbsLogClient != null && a && z) {
            tbsLogClient.showLog(str + ": " + str2);
        }
    }

    public static void v(String str, String str2, boolean z) {
        v(str, str2);
        TbsLogClient tbsLogClient = f2683c;
        if (tbsLogClient != null && a && z) {
            tbsLogClient.showLog(str + ": " + str2);
        }
    }

    public static void e(String str, String str2, boolean z) {
        e(str, str2);
        TbsLogClient tbsLogClient = f2683c;
        if (tbsLogClient != null && a && z) {
            tbsLogClient.showLog(str + ": " + str2);
        }
    }

    public static void i(String str, String str2, boolean z) {
        i(str, str2);
        TbsLogClient tbsLogClient = f2683c;
        if (tbsLogClient != null && a && z) {
            tbsLogClient.showLog(str + ": " + str2);
        }
    }

    public static void w(String str, String str2, boolean z) {
        w(str, str2);
        TbsLogClient tbsLogClient = f2683c;
        if (tbsLogClient != null && a && z) {
            tbsLogClient.showLog(str + ": " + str2);
        }
    }
}
