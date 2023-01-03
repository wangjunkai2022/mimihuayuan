package i.m0.g;

import h.o.c.f;

/* compiled from: ErrorCode.kt */
/* loaded from: classes.dex */
public enum b {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8),
    /* Fake field, exist only in values array */
    COMPRESSION_ERROR(9),
    /* Fake field, exist only in values array */
    CONNECT_ERROR(10),
    /* Fake field, exist only in values array */
    ENHANCE_YOUR_CALM(11),
    /* Fake field, exist only in values array */
    INADEQUATE_SECURITY(12),
    /* Fake field, exist only in values array */
    HTTP_1_1_REQUIRED(13);
    

    /* renamed from: i  reason: collision with root package name */
    public static final a f6620i = new a(null);
    public final int a;

    /* compiled from: ErrorCode.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(f fVar) {
        }
    }

    b(int i2) {
        this.a = i2;
    }
}
