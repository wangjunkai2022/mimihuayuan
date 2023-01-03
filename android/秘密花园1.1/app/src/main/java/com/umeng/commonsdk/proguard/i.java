package com.umeng.commonsdk.proguard;

/* compiled from: TApplicationException.java */
/* loaded from: classes.dex */
public class i extends p {
    public static final int a = 0;
    public static final int b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f3089c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f3090d = 3;

    /* renamed from: e  reason: collision with root package name */
    public static final int f3091e = 4;

    /* renamed from: f  reason: collision with root package name */
    public static final int f3092f = 5;

    /* renamed from: g  reason: collision with root package name */
    public static final int f3093g = 6;

    /* renamed from: h  reason: collision with root package name */
    public static final int f3094h = 7;

    /* renamed from: j  reason: collision with root package name */
    public static final an f3095j = new an("TApplicationException");

    /* renamed from: k  reason: collision with root package name */
    public static final ad f3096k = new ad("message", (byte) 11, 1);

    /* renamed from: l  reason: collision with root package name */
    public static final ad f3097l = new ad("type", (byte) 8, 2);

    /* renamed from: m  reason: collision with root package name */
    public static final long f3098m = 1;

    /* renamed from: i  reason: collision with root package name */
    public int f3099i;

    public i() {
        this.f3099i = 0;
    }

    public int a() {
        return this.f3099i;
    }

    public void b(ai aiVar) throws p {
        aiVar.a(f3095j);
        if (getMessage() != null) {
            aiVar.a(f3096k);
            aiVar.a(getMessage());
            aiVar.c();
        }
        aiVar.a(f3097l);
        aiVar.a(this.f3099i);
        aiVar.c();
        aiVar.d();
        aiVar.b();
    }

    public static i a(ai aiVar) throws p {
        aiVar.j();
        String str = null;
        int i2 = 0;
        while (true) {
            ad l2 = aiVar.l();
            byte b2 = l2.b;
            if (b2 == 0) {
                aiVar.k();
                return new i(i2, str);
            }
            short s = l2.f3019c;
            if (s != 1) {
                if (s != 2) {
                    al.a(aiVar, b2);
                } else if (b2 == 8) {
                    i2 = aiVar.w();
                } else {
                    al.a(aiVar, b2);
                }
            } else if (b2 == 11) {
                str = aiVar.z();
            } else {
                al.a(aiVar, b2);
            }
            aiVar.m();
        }
    }

    public i(int i2) {
        this.f3099i = 0;
        this.f3099i = i2;
    }

    public i(int i2, String str) {
        super(str);
        this.f3099i = 0;
        this.f3099i = i2;
    }

    public i(String str) {
        super(str);
        this.f3099i = 0;
    }
}
