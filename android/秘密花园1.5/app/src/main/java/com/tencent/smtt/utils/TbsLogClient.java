package com.tencent.smtt.utils;

import android.content.Context;
import android.os.Environment;
import android.os.Looper;
import android.os.Process;
import android.widget.TextView;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* loaded from: classes.dex */
public class TbsLogClient {
    public static TbsLogClient a = null;

    /* renamed from: c  reason: collision with root package name */
    public static File f2684c = null;

    /* renamed from: d  reason: collision with root package name */
    public static String f2685d = null;

    /* renamed from: e  reason: collision with root package name */
    public static byte[] f2686e = null;

    /* renamed from: i  reason: collision with root package name */
    public static boolean f2687i = true;
    public TextView b;

    /* renamed from: f  reason: collision with root package name */
    public SimpleDateFormat f2688f;

    /* renamed from: g  reason: collision with root package name */
    public Context f2689g;

    /* renamed from: h  reason: collision with root package name */
    public StringBuffer f2690h = new StringBuffer();

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public String a;

        public a(String str) {
            this.a = null;
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextView textView = TbsLogClient.this.b;
            if (textView != null) {
                textView.append(this.a + com.umeng.commonsdk.internal.utils.g.a);
            }
        }
    }

    public TbsLogClient(Context context) {
        this.f2688f = null;
        this.f2689g = null;
        try {
            this.f2689g = context.getApplicationContext();
            this.f2688f = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss.SSS", Locale.US);
        } catch (Exception unused) {
            this.f2688f = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss.SSS");
        }
    }

    private void a() {
        try {
            if (f2684c == null) {
                if (Environment.getExternalStorageState().equals("mounted")) {
                    String a2 = f.a(this.f2689g, 6);
                    if (a2 == null) {
                        f2684c = null;
                    } else {
                        f2684c = new File(a2, "tbslog.txt");
                        f2685d = LogFileUtils.createKey();
                        f2686e = LogFileUtils.createHeaderText(f2684c.getName(), f2685d);
                    }
                } else {
                    f2684c = null;
                }
            }
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        } catch (SecurityException e3) {
            e3.printStackTrace();
        }
    }

    public static void setWriteLogJIT(boolean z) {
        f2687i = z;
    }

    public void d(String str, String str2) {
    }

    public void e(String str, String str2) {
    }

    public void i(String str, String str2) {
    }

    public void setLogView(TextView textView) {
        this.b = textView;
    }

    public void showLog(String str) {
        TextView textView = this.b;
        if (textView != null) {
            textView.post(new a(str));
        }
    }

    public void v(String str, String str2) {
    }

    public void w(String str, String str2) {
    }

    public void writeLog(String str) {
        try {
            String format = this.f2688f.format(Long.valueOf(System.currentTimeMillis()));
            StringBuffer stringBuffer = this.f2690h;
            stringBuffer.append(format);
            stringBuffer.append(" pid=");
            stringBuffer.append(Process.myPid());
            stringBuffer.append(" tid=");
            stringBuffer.append(Process.myTid());
            stringBuffer.append(str);
            stringBuffer.append(com.umeng.commonsdk.internal.utils.g.a);
            if (Thread.currentThread() != Looper.getMainLooper().getThread() || f2687i) {
                writeLogToDisk();
            }
            if (this.f2690h.length() > 524288) {
                this.f2690h.delete(0, this.f2690h.length());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void writeLogToDisk() {
        try {
            a();
            if (f2684c != null) {
                LogFileUtils.writeDataToStorage(f2684c, f2685d, f2686e, this.f2690h.toString(), true);
                this.f2690h.delete(0, this.f2690h.length());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
