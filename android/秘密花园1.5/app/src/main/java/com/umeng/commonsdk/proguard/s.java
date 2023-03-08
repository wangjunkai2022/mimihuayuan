package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.ac;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* compiled from: TSerializer.java */
/* loaded from: classes.dex */
public class s {
    public final ByteArrayOutputStream a;
    public final au b;

    /* renamed from: c  reason: collision with root package name */
    public ai f3176c;

    public s() {
        this(new ac.a());
    }

    public byte[] a(j jVar) throws p {
        this.a.reset();
        jVar.write(this.f3176c);
        return this.a.toByteArray();
    }

    public String b(j jVar) throws p {
        return new String(a(jVar));
    }

    public s(ak akVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.a = byteArrayOutputStream;
        au auVar = new au(byteArrayOutputStream);
        this.b = auVar;
        this.f3176c = akVar.a(auVar);
    }

    public String a(j jVar, String str) throws p {
        try {
            return new String(a(jVar), str);
        } catch (UnsupportedEncodingException unused) {
            throw new p(f.b.a.a.a.f("JVM DOES NOT SUPPORT ENCODING: ", str));
        }
    }
}
