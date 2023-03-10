package f.i.a.a.w0;
/* compiled from: AudioSink.java */
/* loaded from: classes.dex */
public interface p {

    /* compiled from: AudioSink.java */
    /* loaded from: classes.dex */
    public static final class a extends Exception {
        public a(Throwable th) {
            super(th);
        }

        public a(String str) {
            super(str);
        }
    }

    /* compiled from: AudioSink.java */
    /* loaded from: classes.dex */
    public static final class b extends Exception {
        public b(int i2, int i3, int i4, int i5) {
            super("AudioTrack init failed: " + i2 + ", Config(" + i3 + ", " + i4 + ", " + i5 + ")");
        }
    }

    /* compiled from: AudioSink.java */
    /* loaded from: classes.dex */
    public interface c {
    }

    /* compiled from: AudioSink.java */
    /* loaded from: classes.dex */
    public static final class d extends Exception {
        public d(int i2) {
            super(f.b.a.a.a.J("AudioTrack write failed: ", i2));
        }
    }
}
