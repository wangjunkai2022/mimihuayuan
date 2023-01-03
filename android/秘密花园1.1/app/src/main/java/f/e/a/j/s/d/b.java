package f.e.a.j.s.d;

import android.widget.SeekBar;
import com.comeback.data.ui.iqiyi.adapter.ShortVideoAdapter;

/* compiled from: ShortVideoAdapter.java */
/* loaded from: classes.dex */
public class b implements SeekBar.OnSeekBarChangeListener {
    public final /* synthetic */ ShortVideoAdapter.TiktopHolder a;

    public b(ShortVideoAdapter.TiktopHolder tiktopHolder) {
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
        this.a.f1142c.seekTo((this.a.f1142c.getDuration() / 1000) * seekBar.getProgress());
    }
}
