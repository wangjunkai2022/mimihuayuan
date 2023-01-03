package f.e.a.h;

import android.os.Message;
import c.a.a.b.g.h;
import f.e.a.h.h.a;
import java.io.IOException;

/* compiled from: M3U8InfoManger.java */
/* loaded from: classes.dex */
public class g extends Thread {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f3803c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ f f3804d;

    public g(f fVar, String str, String str2, String str3) {
        this.f3804d = fVar;
        this.a = str;
        this.b = str2;
        this.f3803c = str3;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            a V0 = h.V0(this.a, this.b, this.f3803c);
            f fVar = this.f3804d;
            Message obtainMessage = fVar.b.obtainMessage();
            obtainMessage.obj = V0;
            obtainMessage.what = 1102;
            fVar.b.sendMessage(obtainMessage);
        } catch (IOException e2) {
            f fVar2 = this.f3804d;
            Message obtainMessage2 = fVar2.b.obtainMessage();
            obtainMessage2.obj = e2;
            obtainMessage2.what = 1101;
            fVar2.b.sendMessage(obtainMessage2);
        }
    }
}
