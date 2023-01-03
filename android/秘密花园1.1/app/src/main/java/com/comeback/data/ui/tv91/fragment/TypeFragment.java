package com.comeback.data.ui.tv91.fragment;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.tv91.adapter.TagAdapter;
import com.comeback.data.ui.tv91.bean.Tags;
import com.comeback.data.ui.tv91.bean.TiktopParam;
import com.comeback.secret.garden.R;
import m.j;

/* loaded from: classes.dex */
public class TypeFragment extends BaseFragment {
    @BindView
    public EditText etSearch;

    /* renamed from: g  reason: collision with root package name */
    public TagAdapter f2126g;

    /* renamed from: h  reason: collision with root package name */
    public Tags f2127h;
    @BindView
    public View ivCancel;
    @BindView
    public RecyclerView rvList;

    /* loaded from: classes.dex */
    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            TypeFragment typeFragment = TypeFragment.this;
            if (typeFragment.f2127h == null) {
                return;
            }
            typeFragment.ivCancel.setVisibility(TextUtils.isEmpty(charSequence.toString()) ? 8 : 0);
            TypeFragment.this.f2126g.c();
            TypeFragment typeFragment2 = TypeFragment.this;
            typeFragment2.f2126g.a(typeFragment2.f2127h.getMessage(charSequence.toString()));
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<Tags> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(Tags tags) {
            Tags tags2 = tags;
            TypeFragment typeFragment = TypeFragment.this;
            typeFragment.f2127h = tags2;
            typeFragment.f2126g.a(tags2.getMessage());
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_tv91_type;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.etSearch.addTextChangedListener(new a());
        this.rvList.setLayoutManager(new LinearLayoutManager(getContext()));
        TagAdapter tagAdapter = new TagAdapter(getContext());
        this.f2126g = tagAdapter;
        this.rvList.setAdapter(tagAdapter);
        g(f.e.a.j.n0.i.b.a().d(TiktopParam.buildTags()), new b());
    }
}
