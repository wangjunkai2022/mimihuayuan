package f.i.b;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: LongSerializationPolicy.java */
/* loaded from: classes.dex */
public abstract class x {
    public static final x a = new a("DEFAULT", 0);
    public static final x b;

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ x[] f6107c;

    /* compiled from: LongSerializationPolicy.java */
    /* loaded from: classes.dex */
    public enum a extends x {
        public a(String str, int i2) {
            super(str, i2, null);
        }
    }

    static {
        x xVar = new x("STRING", 1) { // from class: f.i.b.x.b
        };
        b = xVar;
        f6107c = new x[]{a, xVar};
    }

    public x(String str, int i2, a aVar) {
    }

    public static x valueOf(String str) {
        return (x) Enum.valueOf(x.class, str);
    }

    public static x[] values() {
        return (x[]) f6107c.clone();
    }
}
