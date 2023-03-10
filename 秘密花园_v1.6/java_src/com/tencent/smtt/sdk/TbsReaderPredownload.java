package com.tencent.smtt.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.smtt.sdk.TbsReaderView;
import java.util.LinkedList;
/* loaded from: classes.dex */
public class TbsReaderPredownload {
    public static final int READER_SO_SUCCESS = 2;
    public static final int READER_WAIT_IN_QUEUE = 3;
    public static final String[] b = {"docx", "pptx", "xlsx", "pdf", "epub", "txt"};

    /* renamed from: i  reason: collision with root package name */
    public ReaderPreDownloadCallback f2551i;
    public Handler a = null;

    /* renamed from: c  reason: collision with root package name */
    public LinkedList<String> f2545c = new LinkedList<>();

    /* renamed from: d  reason: collision with root package name */
    public boolean f2546d = false;

    /* renamed from: e  reason: collision with root package name */
    public ReaderWizard f2547e = null;

    /* renamed from: f  reason: collision with root package name */
    public TbsReaderView.ReaderCallback f2548f = null;

    /* renamed from: g  reason: collision with root package name */
    public Object f2549g = null;

    /* renamed from: h  reason: collision with root package name */
    public Context f2550h = null;

    /* renamed from: j  reason: collision with root package name */
    public String f2552j = "";

    /* loaded from: classes.dex */
    public interface ReaderPreDownloadCallback {
        public static final int NOTIFY_PLUGIN_FAILED = -1;
        public static final int NOTIFY_PLUGIN_SUCCESS = 0;

        void onEvent(String str, int i2, boolean z);
    }

    public TbsReaderPredownload(ReaderPreDownloadCallback readerPreDownloadCallback) {
        this.f2551i = null;
        this.f2551i = readerPreDownloadCallback;
        for (String str : b) {
            this.f2545c.add(str);
        }
        a();
    }

    private void b() {
        b(3);
    }

    public boolean a(String str) {
        if (this.f2549g == null || this.f2547e == null || !ReaderWizard.isSupportExt(str)) {
            return false;
        }
        return this.f2547e.checkPlugin(this.f2549g, this.f2550h, str, true);
    }

    public boolean c(int i2) {
        return this.a.hasMessages(i2);
    }

    public boolean init(Context context) {
        if (context == null) {
            return false;
        }
        this.f2550h = context.getApplicationContext();
        boolean a = TbsReaderView.a(context.getApplicationContext());
        TbsReaderView.ReaderCallback readerCallback = new TbsReaderView.ReaderCallback() { // from class: com.tencent.smtt.sdk.TbsReaderPredownload.1
            @Override // com.tencent.smtt.sdk.TbsReaderView.ReaderCallback
            public void onCallBackAction(Integer num, Object obj, Object obj2) {
                int intValue;
                if (num.intValue() == 5012 && 5014 != (intValue = ((Integer) obj).intValue())) {
                    if (5013 == intValue) {
                        TbsReaderPredownload.this.a(0);
                    } else if (intValue == 0) {
                        TbsReaderPredownload.this.a(0);
                    } else {
                        TbsReaderPredownload.this.a(-1);
                    }
                    TbsReaderPredownload tbsReaderPredownload = TbsReaderPredownload.this;
                    tbsReaderPredownload.f2552j = "";
                    tbsReaderPredownload.a(3, 100);
                }
            }
        };
        this.f2548f = readerCallback;
        try {
            if (this.f2547e == null) {
                this.f2547e = new ReaderWizard(readerCallback);
            }
            if (this.f2549g == null) {
                this.f2549g = this.f2547e.getTbsReader();
            }
            return this.f2549g != null ? this.f2547e.initTbsReader(this.f2549g, context.getApplicationContext()) : a;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public void pause() {
        this.f2546d = true;
    }

    public void shutdown() {
        this.f2551i = null;
        this.f2546d = false;
        this.f2545c.clear();
        b();
        ReaderWizard readerWizard = this.f2547e;
        if (readerWizard != null) {
            readerWizard.destroy(this.f2549g);
            this.f2549g = null;
        }
        this.f2550h = null;
    }

    public void start(String str) {
        this.f2546d = false;
        b(3);
        this.f2545c.add(str);
        a(3, 100);
    }

    public void startAll() {
        this.f2546d = false;
        if (!false && !c(3)) {
            a(3, 100);
        }
    }

    public void b(int i2) {
        this.a.removeMessages(i2);
    }

    public void a(int i2) {
        if (this.f2551i != null) {
            this.f2551i.onEvent(this.f2552j, i2, this.f2545c.isEmpty());
        }
    }

    public void a() {
        this.a = new Handler(Looper.getMainLooper()) { // from class: com.tencent.smtt.sdk.TbsReaderPredownload.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 3 && !TbsReaderPredownload.this.f2545c.isEmpty()) {
                    TbsReaderPredownload tbsReaderPredownload = TbsReaderPredownload.this;
                    if (tbsReaderPredownload.f2546d) {
                        return;
                    }
                    String removeFirst = tbsReaderPredownload.f2545c.removeFirst();
                    TbsReaderPredownload tbsReaderPredownload2 = TbsReaderPredownload.this;
                    tbsReaderPredownload2.f2552j = removeFirst;
                    if (tbsReaderPredownload2.a(removeFirst)) {
                        return;
                    }
                    TbsReaderPredownload.this.a(-1);
                }
            }
        };
    }

    public void a(int i2, int i3) {
        this.a.sendMessageDelayed(this.a.obtainMessage(i2), i3);
    }
}
