package com.umeng.commonsdk.debug;
/* loaded from: classes.dex */
public class UMRTLog {
    public static final String RTLOG_ENABLE = "1";
    public static final String RTLOG_PROP = "debug.umeng.rtlog";
    public static final String RTLOG_TAG = "MobclickRT";

    public static void d(String str, String str2) {
        if (shouldOutput()) {
            warpperMsg(str2, false);
        }
    }

    public static void e(String str, String str2) {
        if (shouldOutput()) {
            warpperMsg(str2, false);
        }
    }

    public static String getSystemProperty(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public static void i(String str, String str2) {
        if (shouldOutput()) {
            warpperMsg(str2, false);
        }
    }

    public static void sd(String str, String str2) {
        if (shouldOutput()) {
            warpperMsg(str2, true);
        }
    }

    public static void se(String str, String str2) {
        if (shouldOutput()) {
            warpperMsg(str2, true);
        }
    }

    public static boolean shouldOutput() {
        return RTLOG_ENABLE.equals(getSystemProperty(RTLOG_PROP, "0"));
    }

    public static void si(String str, String str2) {
        if (shouldOutput()) {
            warpperMsg(str2, true);
        }
    }

    public static void sv(String str, String str2) {
        if (shouldOutput()) {
            warpperMsg(str2, true);
        }
    }

    public static void sw(String str, String str2) {
        if (shouldOutput()) {
            warpperMsg(str2, true);
        }
    }

    public static void v(String str, String str2) {
        if (shouldOutput()) {
            warpperMsg(str2, false);
        }
    }

    public static void w(String str, String str2) {
        if (shouldOutput()) {
            warpperMsg(str2, false);
        }
    }

    public static String warpperMsg(String str, boolean z) {
        if (z) {
            StringBuffer stringBuffer = null;
            try {
                StackTraceElement[] stackTrace = new Throwable().getStackTrace();
                if (stackTrace.length >= 3) {
                    String fileName = stackTrace[2].getFileName();
                    String methodName = stackTrace[2].getMethodName();
                    int lineNumber = stackTrace[2].getLineNumber();
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("<");
                    stringBuffer2.append(fileName);
                    stringBuffer2.append(":");
                    stringBuffer2.append(methodName);
                    stringBuffer2.append(":");
                    stringBuffer2.append(lineNumber);
                    stringBuffer2.append("> ");
                    stringBuffer2.append(str);
                    stringBuffer = stringBuffer2;
                }
                return stringBuffer.toString();
            } catch (Throwable unused) {
                return str;
            }
        }
        return str;
    }
}
