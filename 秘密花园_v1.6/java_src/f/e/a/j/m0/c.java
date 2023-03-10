package f.e.a.j.m0;

import android.widget.SeekBar;
import com.comeback.data.ui.test.TiktopAdapter;
/* compiled from: TiktopAdapter.java */
/* loaded from: classes.dex */
public class c implements SeekBar.OnSeekBarChangeListener {
    public final /* synthetic */ TiktopAdapter.TiktopHolder a;

    public c(TiktopAdapter.TiktopHolder tiktopHolder) {
        this.a = tiktopHolder;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.a.a.seekTo((this.a.a.getDuration() / 1000) * seekBar.getProgress());
    }
}
