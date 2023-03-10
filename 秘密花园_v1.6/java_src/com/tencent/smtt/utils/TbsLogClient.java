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
    public static File f2688c = null;

    /* renamed from: d  reason: collision with root package name */
    public static String f2689d = null;

    /* renamed from: e  reason: collision with root package name */
    public static byte[] f2690e = null;

    /* renamed from: i  reason: collision with root package name */
    public static boolean f2691i = true;
    public TextView b;

    /* renamed from: f  reason: collision with root package name */
    public SimpleDateFormat f2692f;

    /* renamed from: g  reason: collision with root package name */
    public Context f2693g;

    /* renamed from: h  reason: collision with root package name */
    public StringBuffer f2694h = new StringBuffer();

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
        this.f2692f = null;
        this.f2693g = null;
        try {
            this.f2693g = context.getApplicationContext();
            this.f2692f = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss.SSS", Locale.US);
        } catch (Exception unused) {
            this.f2692f = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss.SSS");
        }
    }

    private void a() {
        try {
            if (f2688c == null) {
                if (Environment.getExternalStorageState().equals("mounted")) {
                    String a2 = f.a(this.f2693g, 6);
                    if (a2 == null) {
                        f2688c = null;
                    } else {
                        f2688c = new File(a2, "tbslog.txt");
                        f2689d = LogFileUtils.createKey();
                        f2690e = LogFileUtils.createHeaderText(f2688c.getName(), f2689d);
                    }
                } else {
                    f2688c = null;
                }
            }
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        } catch (SecurityException e3) {
            e3.printStackTrace();
        }
    }

    public static void setWriteLogJIT(boolean z) {
        f2691i = z;
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
            String format = this.f2692f.format(Long.valueOf(System.currentTimeMillis()));
            StringBuffer stringBuffer = this.f2694h;
            stringBuffer.append(format);
            stringBuffer.append(" pid=");
            stringBuffer.append(Process.myPid());
            stringBuffer.append(" tid=");
            stringBuffer.append(Process.myTid());
            stringBuffer.append(str);
            stringBuffer.append(com.umeng.commonsdk.internal.utils.g.a);
            if (Thread.currentThread() != Looper.getMainLooper().getThread() || f2691i) {
                writeLogToDisk();
            }
            if (this.f2694h.length() > 524288) {
                this.f2694h.delete(0, this.f2694h.length());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void writeLogToDisk() {
        try {
            a();
            if (f2688c != null) {
                LogFileUtils.writeDataToStorage(f2688c, f2689d, f2690e, this.f2694h.toString(), true);
                this.f2694h.delete(0, this.f2694h.length());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
