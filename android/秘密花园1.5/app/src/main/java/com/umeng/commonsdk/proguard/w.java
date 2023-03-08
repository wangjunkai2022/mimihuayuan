package com.umeng.commonsdk.proguard;

import java.io.Serializable;

/* compiled from: FieldValueMetaData.java */
/* loaded from: classes.dex */
public class w implements Serializable {
    public final boolean a;
    public final byte b;

    /* renamed from: c  reason: collision with root package name */
    public final String f3180c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f3181d;

    public w(byte b, boolean z) {
        this.b = b;
        this.a = false;
        this.f3180c = null;
        this.f3181d = z;
    }

    public boolean a() {
        return this.a;
    }

    public String b() {
        return this.f3180c;
    }

    public boolean c() {
        return this.b == 12;
    }

    public boolean d() {
        byte b = this.b;
        return b == 15 || b == 13 || b == 14;
    }

    public boolean e() {
        return this.f3181d;
    }

    public w(byte b) {
        this(b, false);
    }

    public w(byte b, String str) {
        this.b = b;
        this.a = true;
        this.f3180c = str;
        this.f3181d = false;
    }
}
