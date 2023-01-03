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
    public ReaderPreDownloadCallback f2472i;
    public Handler a = null;

    /* renamed from: c  reason: collision with root package name */
    public LinkedList<String> f2466c = new LinkedList<>();

    /* renamed from: d  reason: collision with root package name */
    public boolean f2467d = false;

    /* renamed from: e  reason: collision with root package name */
    public ReaderWizard f2468e = null;

    /* renamed from: f  reason: collision with root package name */
    public TbsReaderView.ReaderCallback f2469f = null;

    /* renamed from: g  reason: collision with root package name */
    public Object f2470g = null;

    /* renamed from: h  reason: collision with root package name */
    public Context f2471h = null;

    /* renamed from: j  reason: collision with root package name */
    public String f2473j = "";

    /* loaded from: classes.dex */
    public interface ReaderPreDownloadCallback {
        public static final int NOTIFY_PLUGIN_FAILED = -1;
        public static final int NOTIFY_PLUGIN_SUCCESS = 0;

        void onEvent(String str, int i2, boolean z);
    }

    public TbsReaderPredownload(ReaderPreDownloadCallback readerPreDownloadCallback) {
        this.f2472i = null;
        this.f2472i = readerPreDownloadCallback;
        for (String str : b) {
            this.f2466c.add(str);
        }
        a();
    }

    private void b() {
        b(3);
    }

    public boolean a(String str) {
        if (this.f2470g == null || this.f2468e == null || !ReaderWizard.isSupportExt(str)) {
            return false;
        }
        return this.f2468e.checkPlugin(this.f2470g, this.f2471h, str, true);
    }

    public boolean c(int i2) {
        return this.a.hasMessages(i2);
    }

    public boolean init(Context context) {
        if (context == null) {
            return false;
        }
        this.f2471h = context.getApplicationContext();
        boolean a = TbsReaderView.a(context.getApplicationContext());
        AnonymousClass1 r2 = new TbsReaderView.ReaderCallback() { // from class: com.tencent.smtt.sdk.TbsReaderPredownload.1
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
                    tbsReaderPredownload.f2473j = "";
                    tbsReaderPredownload.a(3, 100);
                }
            }
        };
        this.f2469f = r2;
        try {
            if (this.f2468e == null) {
                this.f2468e = new ReaderWizard(r2);
            }
            if (this.f2470g == null) {
                this.f2470g = this.f2468e.getTbsReader();
            }
            return this.f2470g != null ? this.f2468e.initTbsReader(this.f2470g, context.getApplicationContext()) : a;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public void pause() {
        this.f2467d = true;
    }

    public void shutdown() {
        this.f2472i = null;
        this.f2467d = false;
        this.f2466c.clear();
        b();
        ReaderWizard readerWizard = this.f2468e;
        if (readerWizard != null) {
            readerWizard.destroy(this.f2470g);
            this.f2470g = null;
        }
        this.f2471h = null;
    }

    public void start(String str) {
        this.f2467d = false;
        b(3);
        this.f2466c.add(str);
        a(3, 100);
    }

    public void startAll() {
        this.f2467d = false;
        if (!false && !c(3)) {
            a(3, 100);
        }
    }

    public void b(int i2) {
        this.a.removeMessages(i2);
    }

    public void a(int i2) {
        if (this.f2472i != null) {
            this.f2472i.onEvent(this.f2473j, i2, this.f2466c.isEmpty());
        }
    }

    public void a() {
        this.a = new Handler(Looper.getMainLooper()) { // from class: com.tencent.smtt.sdk.TbsReaderPredownload.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 3 && !TbsReaderPredownload.this.f2466c.isEmpty()) {
                    TbsReaderPredownload tbsReaderPredownload = TbsReaderPredownload.this;
                    if (!tbsReaderPredownload.f2467d) {
                        String removeFirst = tbsReaderPredownload.f2466c.removeFirst();
                        TbsReaderPredownload tbsReaderPredownload2 = TbsReaderPredownload.this;
                        tbsReaderPredownload2.f2473j = removeFirst;
                        if (!tbsReaderPredownload2.a(removeFirst)) {
                            TbsReaderPredownload.this.a(-1);
                        }
                    }
                }
            }
        };
    }

    public void a(int i2, int i3) {
        this.a.sendMessageDelayed(this.a.obtainMessage(i2), (long) i3);
    }
}
