package f.i.b;

import java.lang.reflect.Field;
import java.util.Locale;

/* compiled from: FieldNamingPolicy.java */
/* loaded from: classes.dex */
public enum c implements d {
    IDENTITY {
        @Override // f.i.b.d
        public String a(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE {
        @Override // f.i.b.d
        public String a(Field field) {
            return c.c(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES {
        @Override // f.i.b.d
        public String a(Field field) {
            return c.c(c.b(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES {
        @Override // f.i.b.d
        public String a(Field field) {
            return c.b(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES {
        @Override // f.i.b.d
        public String a(Field field) {
            return c.b(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DOTS {
        @Override // f.i.b.d
        public String a(Field field) {
            return c.b(field.getName(), ".").toLowerCase(Locale.ENGLISH);
        }
    };

    c(a aVar) {
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
        String str2;
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        char charAt = str.charAt(0);
        int length = str.length();
        while (i2 < length - 1 && !Character.isLetter(charAt)) {
            sb.append(charAt);
            i2++;
            charAt = str.charAt(i2);
        }
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(charAt);
        int i3 = i2 + 1;
        if (i3 < str.length()) {
            str2 = upperCase + str.substring(i3);
        } else {
            str2 = String.valueOf(upperCase);
        }
        sb.append(str2);
        return sb.toString();
    }
}
