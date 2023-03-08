package f.i.a.a.w0;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import f.i.a.a.m1.h0;
import f.i.a.a.n0;
import f.i.a.a.p0;
import f.i.a.a.t0;

/* compiled from: AudioFocusManager.java */
/* loaded from: classes.dex */
public final class k {
    public final AudioManager a;

    /* renamed from: c  reason: collision with root package name */
    public final c f5945c;

    /* renamed from: f  reason: collision with root package name */
    public AudioFocusRequest f5948f;

    /* renamed from: e  reason: collision with root package name */
    public float f5947e = 1.0f;
    public final b b = new b(null);

    /* renamed from: d  reason: collision with root package name */
    public int f5946d = 0;

    /* compiled from: AudioFocusManager.java */
    /* loaded from: classes.dex */
    public class b implements AudioManager.OnAudioFocusChangeListener {
        public b(a aVar) {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i2) {
            p0[] p0VarArr;
            if (i2 == -3) {
                k kVar = k.this;
                if (kVar != null) {
                    kVar.f5946d = 3;
                } else {
                    throw null;
                }
            } else if (i2 == -2) {
                k.this.f5946d = 2;
            } else if (i2 == -1) {
                k.this.f5946d = -1;
            } else if (i2 != 1) {
                return;
            } else {
                k.this.f5946d = 1;
            }
            k kVar2 = k.this;
            int i3 = kVar2.f5946d;
            if (i3 == -1) {
                ((t0.b) kVar2.f5945c).b(-1);
                k.this.a(true);
            } else if (i3 != 0) {
                if (i3 == 1) {
                    ((t0.b) kVar2.f5945c).b(1);
                } else if (i3 == 2) {
                    ((t0.b) kVar2.f5945c).b(0);
                } else if (i3 != 3) {
                    StringBuilder o = f.b.a.a.a.o("Unknown audio focus state: ");
                    o.append(k.this.f5946d);
                    throw new IllegalStateException(o.toString());
                }
            }
            float f2 = k.this.f5946d == 3 ? 0.2f : 1.0f;
            k kVar3 = k.this;
            if (kVar3.f5947e != f2) {
                kVar3.f5947e = f2;
                t0 t0Var = t0.this;
                float f3 = t0Var.z * t0Var.n.f5947e;
                for (p0 p0Var : t0Var.b) {
                    if (p0Var.t() == 1) {
                        n0 E = t0Var.f5857c.E(p0Var);
                        c.a.a.b.g.h.v(!E.f5795j);
                        E.f5789d = 2;
                        Float valueOf = Float.valueOf(f3);
                        c.a.a.b.g.h.v(!E.f5795j);
                        E.f5790e = valueOf;
                        E.c();
                    }
                }
            }
        }
    }

    /* compiled from: AudioFocusManager.java */
    /* loaded from: classes.dex */
    public interface c {
    }

    public k(Context context, c cVar) {
        this.a = (AudioManager) context.getApplicationContext().getSystemService("audio");
        this.f5945c = cVar;
    }

    public final void a(boolean z) {
        if (this.f5946d == 0) {
            return;
        }
        if (h0.a >= 26) {
            AudioFocusRequest audioFocusRequest = this.f5948f;
            if (audioFocusRequest != null) {
                this.a.abandonAudioFocusRequest(audioFocusRequest);
            }
        } else {
            this.a.abandonAudioFocus(this.b);
        }
        this.f5946d = 0;
    }
}
