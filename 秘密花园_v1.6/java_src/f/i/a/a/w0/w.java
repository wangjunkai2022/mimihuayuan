package f.i.a.a.w0;

import android.media.AudioTrack;
/* compiled from: DefaultAudioSink.java */
/* loaded from: classes.dex */
public class w extends Thread {
    public final /* synthetic */ AudioTrack a;

    public w(v vVar, AudioTrack audioTrack) {
        this.a = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.a.release();
    }
}
