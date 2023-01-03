package com.umeng.commonsdk.proguard;

import f.b.a.a.a;

/* compiled from: TField.java */
/* loaded from: classes.dex */
public class ad {
    public final String a;
    public final byte b;

    /* renamed from: c  reason: collision with root package name */
    public final short f3019c;

    public ad() {
        this("", (byte) 0, 0);
    }

    public boolean a(ad adVar) {
        return this.b == adVar.b && this.f3019c == adVar.f3019c;
    }

    public String toString() {
        StringBuilder o = a.o("<TField name:'");
        o.append(this.a);
        o.append("' type:");
        o.append((int) this.b);
        o.append(" field-id:");
        return a.k(o, this.f3019c, ">");
    }

    public ad(String str, byte b, short s) {
        this.a = str;
        this.b = b;
        this.f3019c = s;
    }
}
