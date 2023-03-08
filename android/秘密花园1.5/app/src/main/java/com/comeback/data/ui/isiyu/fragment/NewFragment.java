package com.comeback.data.ui.isiyu.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class NewFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_isiyu_new;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(NewTypeFragment.o(e.a("WAwPDQUWZkcaC1E=")));
        String a = e.a("Rw4CHTQQVkYdEg==");
        Bundle bundle = new Bundle();
        bundle.putString(e.a("RA0REA=="), a);
        NewTypeFragment newTypeFragment = new NewTypeFragment();
        newTypeFragment.setArguments(bundle);
        arrayList.add(newTypeFragment);
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0f7jgv3D"), e.a("0f7jg+je")};
    }
}
