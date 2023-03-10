package f.e.a.j.g.f;

import android.widget.SeekBar;
import com.comeback.data.ui.cucumber.adapter.ShortVideoAdapter;
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
        this.a.f458c.seekTo((this.a.f458c.getDuration() / 1000) * seekBar.getProgress());
    }
}
