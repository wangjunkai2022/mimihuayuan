package f.i.b;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: FieldNamingPolicy.java */
/* loaded from: classes.dex */
public abstract class c implements f.i.b.d {
    public static final c a = new a("IDENTITY", 0);
    public static final c b = new c("UPPER_CAMEL_CASE", 1) { // from class: f.i.b.c.b
        @Override // f.i.b.d
        public String a(Field field) {
            return c.c(field.getName());
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public static final c f6003c = new c("UPPER_CAMEL_CASE_WITH_SPACES", 2) { // from class: f.i.b.c.c
        @Override // f.i.b.d
        public String a(Field field) {
            return c.c(c.b(field.getName(), " "));
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final c f6004d = new c("LOWER_CASE_WITH_UNDERSCORES", 3) { // from class: f.i.b.c.d
        @Override // f.i.b.d
        public String a(Field field) {
            return c.b(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    };

    /* renamed from: e  reason: collision with root package name */
    public static final c f6005e = new c("LOWER_CASE_WITH_DASHES", 4) { // from class: f.i.b.c.e
        @Override // f.i.b.d
        public String a(Field field) {
            return c.b(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    /* renamed from: f  reason: collision with root package name */
    public static final c f6006f;

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ c[] f6007g;

    /* compiled from: FieldNamingPolicy.java */
    /* loaded from: classes.dex */
    public enum a extends c {
        public a(String str, int i2) {
            super(str, i2, null);
        }

        @Override // f.i.b.d
        public String a(Field field) {
            return field.getName();
        }
    }

    static {
        c cVar = new c("LOWER_CASE_WITH_DOTS", 5) { // from class: f.i.b.c.f
            @Override // f.i.b.d
            public String a(Field field) {
                return c.b(field.getName(), ".").toLowerCase(Locale.ENGLISH);
            }
        };
        f6006f = cVar;
        f6007g = new c[]{a, b, f6003c, f6004d, f6005e, cVar};
    }

    public c(String str, int i2, a aVar) {
    }

    public static String b(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    public static String c(String str) {
        int i2;
        String valueOf;
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        char charAt = str.charAt(0);
        int length = str.length();
        while (i3 < length - 1 && !Character.isLetter(charAt)) {
            sb.append(charAt);
            i3++;
            charAt = str.charAt(i3);
        }
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(charAt);
        if (i3 + 1 < str.length()) {
            valueOf = upperCase + str.substring(i2);
        } else {
            valueOf = String.valueOf(upperCase);
        }
        sb.append(valueOf);
        return sb.toString();
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f6007g.clone();
    }
}
