package f.e.a.h;

import android.os.Handler;
import android.os.Message;
import androidx.core.view.PointerIconCompat;
import com.comeback.data.App;
import com.comeback.data.ui.main.DownloadActivity;
import com.comeback.data.ui.main.bean.VideoCacheBean;
import g.a.x;
import i.b0;
import i.d0;
import i.e0;
import io.realm.RealmQuery;
import java.io.File;
import java.io.PrintStream;
import java.net.Proxy;
import java.util.Timer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* compiled from: M3U8DownloadTask.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: l  reason: collision with root package name */
    public static int f3863l;

    /* renamed from: m  reason: collision with root package name */
    public static int f3864m;
    public static long n;
    public f.e.a.h.h.c a;
    public String b;

    /* renamed from: e  reason: collision with root package name */
    public VideoCacheBean f3867e;

    /* renamed from: i  reason: collision with root package name */
    public Timer f3871i;

    /* renamed from: j  reason: collision with root package name */
    public ExecutorService f3872j;

    /* renamed from: c  reason: collision with root package name */
    public long f3865c = 0;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3866d = false;

    /* renamed from: f  reason: collision with root package name */
    public int f3868f = 4;

    /* renamed from: g  reason: collision with root package name */
    public int f3869g = 1800000;

    /* renamed from: h  reason: collision with root package name */
    public int f3870h = 10000;

    /* renamed from: k  reason: collision with root package name */
    public Handler f3873k = new HandlerC0056a();

    /* compiled from: M3U8DownloadTask.java */
    /* renamed from: f.e.a.h.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class HandlerC0056a extends Handler {
        public HandlerC0056a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case PointerIconCompat.TYPE_CONTEXT_MENU /* 1001 */:
                    f.e.a.h.h.c cVar = a.this.a;
                    if (cVar != null) {
                        ((DownloadActivity) cVar).o((Throwable) message.obj);
                    }
                    App.b.a = null;
                    return;
                case PointerIconCompat.TYPE_HAND /* 1002 */:
                    f.e.a.h.h.c cVar2 = a.this.a;
                    if (cVar2 != null) {
                        int i2 = a.f3864m;
                        int i3 = a.f3863l;
                        f.e.a.e.a("Q1g=");
                        f.e.a.e.a("F0JDREsQAw==");
                        f.e.a.k.f.a();
                        ((DownloadActivity) cVar2).progress.setProgress((i3 * 100) / i2);
                        return;
                    }
                    return;
                case PointerIconCompat.TYPE_HELP /* 1003 */:
                    Timer timer = a.this.f3871i;
                    if (timer != null) {
                        timer.cancel();
                    }
                    a aVar = a.this;
                    if (aVar != null) {
                        App.b.a = null;
                        x P = x.P();
                        P.f();
                        RealmQuery realmQuery = new RealmQuery(P, VideoCacheBean.class);
                        realmQuery.a(f.e.a.e.a("QhAP"), aVar.f3867e.getUrl());
                        P.d();
                        ((VideoCacheBean) realmQuery.c()).setDownloadFinish(true);
                        P.g();
                        f.e.a.h.h.c cVar3 = a.this.a;
                        if (cVar3 != null) {
                            DownloadActivity downloadActivity = (DownloadActivity) cVar3;
                            downloadActivity.rlDown.setVisibility(8);
                            downloadActivity.p();
                            return;
                        }
                        return;
                    }
                    throw null;
                default:
                    return;
            }
        }
    }

    public a(VideoCacheBean videoCacheBean) {
        this.f3867e = videoCacheBean;
        this.b = videoCacheBean.getTempPath();
    }

    public static void a(a aVar, f.e.a.h.h.a aVar2) {
        byte[] bArr;
        if (aVar == null) {
            throw null;
        }
        if (aVar2 == null) {
            aVar.c(new Throwable(f.e.a.e.a("elE2XEsaShMdE1gL")));
            return;
        }
        File file = new File(aVar.b);
        if (!file.exists()) {
            file.mkdirs();
        }
        String str = aVar2.f3881d;
        try {
            e0.a aVar3 = new e0.a();
            aVar3.i(str);
            aVar3.a(f.e.a.e.a("dA0NCg4QTVocCA=="), f.e.a.e.a("VA4MFw4="));
            e0 b = aVar3.b();
            b0.a aVar4 = new b0.a();
            aVar4.c(25L, TimeUnit.SECONDS);
            aVar4.d(25L, TimeUnit.SECONDS);
            aVar4.f6463m = Proxy.NO_PROXY;
            aVar4.f6456f = true;
            bArr = ((d0) new b0(aVar4).a(b)).T().f6527h.e();
        } catch (Exception unused) {
            PrintStream printStream = System.out;
            f.e.a.e.a("CVxdWlVN3Yv4jonaEw8ajpPTi9DOSQ==");
            bArr = new byte[0];
        }
        aVar2.f3883f = bArr;
        f3864m = aVar2.b.size();
        ExecutorService executorService = aVar.f3872j;
        if (executorService != null && executorService.isTerminated()) {
            aVar.f3872j.shutdownNow();
            aVar.f3872j = null;
        }
        aVar.f3872j = Executors.newFixedThreadPool(aVar.f3868f);
        String str2 = aVar2.a;
        Timer timer = new Timer();
        aVar.f3871i = timer;
        timer.schedule(new d(aVar), 0L, 1000L);
        for (f.e.a.h.h.b bVar : aVar2.b) {
            aVar.f3872j.execute(new e(aVar, file, bVar, str2, aVar2));
        }
    }

    public void b(f.e.a.h.h.c cVar) {
        this.a = cVar;
        if (!this.f3866d) {
            VideoCacheBean videoCacheBean = this.f3867e;
            f3863l = 0;
            synchronized (f.class) {
                if (f.f3877c == null) {
                    f.f3877c = new f();
                }
            }
            f fVar = f.f3877c;
            c cVar2 = new c(this);
            synchronized (fVar) {
                fVar.a = cVar2;
                String url = videoCacheBean.getUrl();
                String cachePath = videoCacheBean.getCachePath();
                String md5 = videoCacheBean.getMd5();
                cVar2.a();
                new g(fVar, url, cachePath, md5).start();
            }
            return;
        }
        c(new Throwable(f.e.a.e.a("YwMQD0sBTF0dD1oA")));
    }

    public final void c(Throwable th) {
        if (!f.e.a.e.a("YwMQD0sBTF0dD1oA").equals(th.getMessage())) {
            d();
        }
        if (f.e.a.e.a("QwoRAQoXGVodElEVCh8TH1IG").equals(th.getMessage())) {
            return;
        }
        Message obtainMessage = this.f3873k.obtainMessage();
        obtainMessage.obj = th;
        obtainMessage.what = PointerIconCompat.TYPE_CONTEXT_MENU;
        this.f3873k.sendMessage(obtainMessage);
    }

    public void d() {
        f.e.a.h.h.c cVar = this.a;
        if (cVar != null) {
            ((DownloadActivity) cVar).rlDown.setVisibility(8);
        }
        Timer timer = this.f3871i;
        if (timer != null) {
            timer.cancel();
            this.f3871i = null;
        }
        this.f3866d = false;
        ExecutorService executorService = this.f3872j;
        if (executorService != null) {
            executorService.shutdownNow();
        }
    }
}
