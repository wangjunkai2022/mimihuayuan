package g.a;

import java.util.Locale;

/* compiled from: OrderedCollectionChangeSet.java */
/* loaded from: classes.dex */
public interface s {

    /* compiled from: OrderedCollectionChangeSet.java */
    /* loaded from: classes.dex */
    public static class a {
        public final int a;
        public final int b;

        public a(int i2, int i3) {
            this.a = i2;
            this.b = i3;
        }

        public String toString() {
            return String.format(Locale.ENGLISH, "startIndex: %d, length: %d", Integer.valueOf(this.a), Integer.valueOf(this.b));
        }
    }
}
