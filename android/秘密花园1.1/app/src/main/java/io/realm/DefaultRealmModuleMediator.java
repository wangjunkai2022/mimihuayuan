package io.realm;

import com.comeback.data.ui.ba.bean.BaComicsBean;
import com.comeback.data.ui.cucumber.bean.RealmVideo;
import com.comeback.data.ui.ds.bean.DsItemBean;
import com.comeback.data.ui.fulao2.bean.ActorsBean;
import com.comeback.data.ui.fulao2.bean.VideosBean;
import com.comeback.data.ui.hm.bean.ItemInfo;
import com.comeback.data.ui.km.bean.User;
import com.comeback.data.ui.km.bean.Video;
import com.comeback.data.ui.km2.bean.Km2User;
import com.comeback.data.ui.km2.bean.Km2Video;
import com.comeback.data.ui.lutube.bean.LActorsBean;
import com.comeback.data.ui.lutube.bean.LVideosBean;
import com.comeback.data.ui.main.bean.CollectVideo;
import com.comeback.data.ui.main.bean.VideoCacheBean;
import com.comeback.data.ui.mimei.bean.MimeiComicItem;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import g.a.a;
import g.a.e0;
import g.a.f1.c;
import g.a.f1.n;
import g.a.f1.o;
import g.a.f1.p;
import g.a.k0;
import g.a.m;
import g.a.x;
import io.realm.annotations.RealmModule;
import io.realm.com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy;
import io.realm.com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy;
import io.realm.com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;
import io.realm.com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy;
import io.realm.com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy;
import io.realm.com_comeback_data_ui_hm_bean_ItemInfoRealmProxy;
import io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy;
import io.realm.com_comeback_data_ui_km2_bean_Km2VideoRealmProxy;
import io.realm.com_comeback_data_ui_km_bean_UserRealmProxy;
import io.realm.com_comeback_data_ui_km_bean_VideoRealmProxy;
import io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy;
import io.realm.com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy;
import io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy;
import io.realm.com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy;
import io.realm.com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy;
import io.realm.com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

@RealmModule
/* loaded from: classes.dex */
public class DefaultRealmModuleMediator extends o {
    public static final Set<Class<? extends e0>> a;

    static {
        HashSet hashSet = new HashSet(16);
        hashSet.add(Video.class);
        hashSet.add(User.class);
        hashSet.add(ItemInfo.class);
        hashSet.add(DsItemBean.class);
        hashSet.add(RealmVideo.class);
        hashSet.add(LVideosBean.class);
        hashSet.add(LActorsBean.class);
        hashSet.add(Km2User.class);
        hashSet.add(Km2Video.class);
        hashSet.add(BaComicsBean.class);
        hashSet.add(MimeiComicItem.class);
        hashSet.add(SLFItemBean.class);
        hashSet.add(CollectVideo.class);
        hashSet.add(VideoCacheBean.class);
        hashSet.add(VideosBean.class);
        hashSet.add(ActorsBean.class);
        a = Collections.unmodifiableSet(hashSet);
    }

    @Override // g.a.f1.o
    public <E extends e0> E b(x xVar, E e2, boolean z, Map<e0, n> map, Set<m> set) {
        Class<?> superclass = e2 instanceof n ? e2.getClass().getSuperclass() : e2.getClass();
        if (superclass.equals(Video.class)) {
            k0 k0Var = xVar.f6317j;
            k0Var.a();
            return (E) superclass.cast(com_comeback_data_ui_km_bean_VideoRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_km_bean_VideoRealmProxy.a) k0Var.f6286f.a(Video.class), (Video) e2, z, map, set));
        } else if (superclass.equals(User.class)) {
            k0 k0Var2 = xVar.f6317j;
            k0Var2.a();
            return (E) superclass.cast(com_comeback_data_ui_km_bean_UserRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_km_bean_UserRealmProxy.a) k0Var2.f6286f.a(User.class), (User) e2, z, map, set));
        } else if (superclass.equals(ItemInfo.class)) {
            k0 k0Var3 = xVar.f6317j;
            k0Var3.a();
            return (E) superclass.cast(com_comeback_data_ui_hm_bean_ItemInfoRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_hm_bean_ItemInfoRealmProxy.a) k0Var3.f6286f.a(ItemInfo.class), (ItemInfo) e2, z, map, set));
        } else if (superclass.equals(DsItemBean.class)) {
            k0 k0Var4 = xVar.f6317j;
            k0Var4.a();
            return (E) superclass.cast(com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy.a) k0Var4.f6286f.a(DsItemBean.class), (DsItemBean) e2, z, map, set));
        } else if (superclass.equals(RealmVideo.class)) {
            k0 k0Var5 = xVar.f6317j;
            k0Var5.a();
            return (E) superclass.cast(com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy.a) k0Var5.f6286f.a(RealmVideo.class), (RealmVideo) e2, z, map, set));
        } else if (superclass.equals(LVideosBean.class)) {
            k0 k0Var6 = xVar.f6317j;
            k0Var6.a();
            return (E) superclass.cast(com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy.a) k0Var6.f6286f.a(LVideosBean.class), (LVideosBean) e2, z, map, set));
        } else if (superclass.equals(LActorsBean.class)) {
            k0 k0Var7 = xVar.f6317j;
            k0Var7.a();
            return (E) superclass.cast(com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy.a) k0Var7.f6286f.a(LActorsBean.class), (LActorsBean) e2, z, map, set));
        } else if (superclass.equals(Km2User.class)) {
            k0 k0Var8 = xVar.f6317j;
            k0Var8.a();
            return (E) superclass.cast(com_comeback_data_ui_km2_bean_Km2UserRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_km2_bean_Km2UserRealmProxy.a) k0Var8.f6286f.a(Km2User.class), (Km2User) e2, z, map, set));
        } else if (superclass.equals(Km2Video.class)) {
            k0 k0Var9 = xVar.f6317j;
            k0Var9.a();
            return (E) superclass.cast(com_comeback_data_ui_km2_bean_Km2VideoRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_km2_bean_Km2VideoRealmProxy.a) k0Var9.f6286f.a(Km2Video.class), (Km2Video) e2, z, map, set));
        } else if (superclass.equals(BaComicsBean.class)) {
            k0 k0Var10 = xVar.f6317j;
            k0Var10.a();
            return (E) superclass.cast(com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy.a) k0Var10.f6286f.a(BaComicsBean.class), (BaComicsBean) e2, z, map, set));
        } else if (superclass.equals(MimeiComicItem.class)) {
            k0 k0Var11 = xVar.f6317j;
            k0Var11.a();
            return (E) superclass.cast(com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy.a) k0Var11.f6286f.a(MimeiComicItem.class), (MimeiComicItem) e2, z, map, set));
        } else if (superclass.equals(SLFItemBean.class)) {
            k0 k0Var12 = xVar.f6317j;
            k0Var12.a();
            return (E) superclass.cast(com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy.a) k0Var12.f6286f.a(SLFItemBean.class), (SLFItemBean) e2, z, map, set));
        } else if (superclass.equals(CollectVideo.class)) {
            k0 k0Var13 = xVar.f6317j;
            k0Var13.a();
            return (E) superclass.cast(com_comeback_data_ui_main_bean_CollectVideoRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_main_bean_CollectVideoRealmProxy.a) k0Var13.f6286f.a(CollectVideo.class), (CollectVideo) e2, z, map, set));
        } else if (superclass.equals(VideoCacheBean.class)) {
            k0 k0Var14 = xVar.f6317j;
            k0Var14.a();
            return (E) superclass.cast(com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy.a) k0Var14.f6286f.a(VideoCacheBean.class), (VideoCacheBean) e2, z, map, set));
        } else if (superclass.equals(VideosBean.class)) {
            k0 k0Var15 = xVar.f6317j;
            k0Var15.a();
            return (E) superclass.cast(com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy.a) k0Var15.f6286f.a(VideosBean.class), (VideosBean) e2, z, map, set));
        } else if (superclass.equals(ActorsBean.class)) {
            k0 k0Var16 = xVar.f6317j;
            k0Var16.a();
            return (E) superclass.cast(com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy.copyOrUpdate(xVar, (com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy.a) k0Var16.f6286f.a(ActorsBean.class), (ActorsBean) e2, z, map, set));
        } else {
            throw o.e(superclass);
        }
    }

    @Override // g.a.f1.o
    public c c(Class<? extends e0> cls, OsSchemaInfo osSchemaInfo) {
        o.a(cls);
        if (cls.equals(Video.class)) {
            return com_comeback_data_ui_km_bean_VideoRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(User.class)) {
            return com_comeback_data_ui_km_bean_UserRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(ItemInfo.class)) {
            return com_comeback_data_ui_hm_bean_ItemInfoRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(DsItemBean.class)) {
            return com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(RealmVideo.class)) {
            return com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(LVideosBean.class)) {
            return com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(LActorsBean.class)) {
            return com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Km2User.class)) {
            return com_comeback_data_ui_km2_bean_Km2UserRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Km2Video.class)) {
            return com_comeback_data_ui_km2_bean_Km2VideoRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(BaComicsBean.class)) {
            return com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(MimeiComicItem.class)) {
            return com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(SLFItemBean.class)) {
            return com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(CollectVideo.class)) {
            return com_comeback_data_ui_main_bean_CollectVideoRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(VideoCacheBean.class)) {
            return com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(VideosBean.class)) {
            return com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(ActorsBean.class)) {
            return com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy.createColumnInfo(osSchemaInfo);
        }
        throw o.e(cls);
    }

    @Override // g.a.f1.o
    public Map<Class<? extends e0>, OsObjectSchemaInfo> d() {
        HashMap hashMap = new HashMap(16);
        hashMap.put(Video.class, com_comeback_data_ui_km_bean_VideoRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(User.class, com_comeback_data_ui_km_bean_UserRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(ItemInfo.class, com_comeback_data_ui_hm_bean_ItemInfoRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(DsItemBean.class, com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(RealmVideo.class, com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(LVideosBean.class, com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(LActorsBean.class, com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(Km2User.class, com_comeback_data_ui_km2_bean_Km2UserRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(Km2Video.class, com_comeback_data_ui_km2_bean_Km2VideoRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(BaComicsBean.class, com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(MimeiComicItem.class, com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(SLFItemBean.class, com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(CollectVideo.class, com_comeback_data_ui_main_bean_CollectVideoRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(VideoCacheBean.class, com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(VideosBean.class, com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(ActorsBean.class, com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // g.a.f1.o
    public Set<Class<? extends e0>> f() {
        return a;
    }

    @Override // g.a.f1.o
    public String h(Class<? extends e0> cls) {
        o.a(cls);
        if (cls.equals(Video.class)) {
            return "Video";
        }
        if (cls.equals(User.class)) {
            return "User";
        }
        if (cls.equals(ItemInfo.class)) {
            return "ItemInfo";
        }
        if (cls.equals(DsItemBean.class)) {
            return "DsItemBean";
        }
        if (cls.equals(RealmVideo.class)) {
            return "RealmVideo";
        }
        if (cls.equals(LVideosBean.class)) {
            return "LVideosBean";
        }
        if (cls.equals(LActorsBean.class)) {
            return "LActorsBean";
        }
        if (cls.equals(Km2User.class)) {
            return "Km2User";
        }
        if (cls.equals(Km2Video.class)) {
            return "Km2Video";
        }
        if (cls.equals(BaComicsBean.class)) {
            return "BaComicsBean";
        }
        if (cls.equals(MimeiComicItem.class)) {
            return "MimeiComicItem";
        }
        if (cls.equals(SLFItemBean.class)) {
            return "SLFItemBean";
        }
        if (cls.equals(CollectVideo.class)) {
            return "CollectVideo";
        }
        if (cls.equals(VideoCacheBean.class)) {
            return "VideoCacheBean";
        }
        if (cls.equals(VideosBean.class)) {
            return "VideosBean";
        }
        if (cls.equals(ActorsBean.class)) {
            return "ActorsBean";
        }
        throw o.e(cls);
    }

    @Override // g.a.f1.o
    public <E extends e0> E i(Class<E> cls, Object obj, p pVar, c cVar, boolean z, List<String> list) {
        a.c cVar2 = a.f6189i.get();
        try {
            cVar2.b((a) obj, pVar, cVar, z, list);
            o.a(cls);
            if (cls.equals(Video.class)) {
                return cls.cast(new com_comeback_data_ui_km_bean_VideoRealmProxy());
            }
            if (cls.equals(User.class)) {
                return cls.cast(new com_comeback_data_ui_km_bean_UserRealmProxy());
            }
            if (cls.equals(ItemInfo.class)) {
                return cls.cast(new com_comeback_data_ui_hm_bean_ItemInfoRealmProxy());
            }
            if (cls.equals(DsItemBean.class)) {
                return cls.cast(new com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy());
            }
            if (cls.equals(RealmVideo.class)) {
                return cls.cast(new com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy());
            }
            if (cls.equals(LVideosBean.class)) {
                return cls.cast(new com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy());
            }
            if (cls.equals(LActorsBean.class)) {
                return cls.cast(new com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy());
            }
            if (cls.equals(Km2User.class)) {
                return cls.cast(new com_comeback_data_ui_km2_bean_Km2UserRealmProxy());
            }
            if (cls.equals(Km2Video.class)) {
                return cls.cast(new com_comeback_data_ui_km2_bean_Km2VideoRealmProxy());
            }
            if (cls.equals(BaComicsBean.class)) {
                return cls.cast(new com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy());
            }
            if (cls.equals(MimeiComicItem.class)) {
                return cls.cast(new com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy());
            }
            if (cls.equals(SLFItemBean.class)) {
                return cls.cast(new com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy());
            }
            if (cls.equals(CollectVideo.class)) {
                return cls.cast(new com_comeback_data_ui_main_bean_CollectVideoRealmProxy());
            }
            if (cls.equals(VideoCacheBean.class)) {
                return cls.cast(new com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy());
            }
            if (cls.equals(VideosBean.class)) {
                return cls.cast(new com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy());
            }
            if (cls.equals(ActorsBean.class)) {
                return cls.cast(new com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy());
            }
            throw o.e(cls);
        } finally {
            cVar2.a();
        }
    }

    @Override // g.a.f1.o
    public boolean j() {
        return true;
    }
}
