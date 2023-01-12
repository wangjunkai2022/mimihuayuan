package com.umeng.commonsdk.proguard;

/* compiled from: TField.java */
/* loaded from: classes.dex */
public class ad {
    public final String a;
    public final byte b;

    /* renamed from: c  reason: collision with root package name */
    public final short f3094c;

    public ad() {
        this("", (byte) 0, (short) 0);
    }

    public boolean a(ad adVar) {
        return this.b == adVar.b && this.f3094c == adVar.f3094c;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("<TField name:'");
        o.append(this.a);
        o.append("' type:");
        o.append((int) this.b);
        o.append(" field-id:");
        return f.b.a.a.a.k(o, this.f3094c, ">");
    }

    public ad(String str, byte b, short s) {
        this.a = str;
        this.b = b;
        this.f3094c = s;
    }
}
