package com.umeng.commonsdk.proguard;

import f.b.a.a.a;

/* compiled from: TMessage.java */
/* loaded from: classes.dex */
public final class ag {
    public final String a;
    public final byte b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3021c;

    public ag() {
        this("", (byte) 0, 0);
    }

    public boolean a(ag agVar) {
        return this.a.equals(agVar.a) && this.b == agVar.b && this.f3021c == agVar.f3021c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ag) {
            return a((ag) obj);
        }
        return false;
    }

    public String toString() {
        StringBuilder o = a.o("<TMessage name:'");
        o.append(this.a);
        o.append("' type: ");
        o.append((int) this.b);
        o.append(" seqid:");
        return a.k(o, this.f3021c, ">");
    }

    public ag(String str, byte b, int i2) {
        this.a = str;
        this.b = b;
        this.f3021c = i2;
    }
}
