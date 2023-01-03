package f.i.a.a.b1.r;

import f.i.a.a.b1.p;
import f.i.a.a.h0;
import f.i.a.a.m1.u;

/* compiled from: TagPayloadReader.java */
/* loaded from: classes.dex */
public abstract class d {
    public final p a;

    /* compiled from: TagPayloadReader.java */
    /* loaded from: classes.dex */
    public static final class a extends h0 {
        public a(String str) {
            super(str);
        }
    }

    public d(p pVar) {
        this.a = pVar;
    }

    public final boolean a(u uVar, long j2) throws h0 {
        return b(uVar) && c(uVar, j2);
    }

    public abstract boolean b(u uVar) throws h0;

    public abstract boolean c(u uVar, long j2) throws h0;
}
