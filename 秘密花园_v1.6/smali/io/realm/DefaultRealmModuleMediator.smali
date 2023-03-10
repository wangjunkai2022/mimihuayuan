.class public Lio/realm/DefaultRealmModuleMediator;
.super Lg/a/f1/o;
.source "DefaultRealmModuleMediator.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/e0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2
    const-class v1, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    const-class v1, Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    const-class v1, Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    const-class v1, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    const-class v1, Lcom/comeback/data/ui/km/bean/User;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    const-class v1, Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    const-class v1, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    const-class v1, Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    const-class v1, Lcom/comeback/data/ui/km2/bean/Km2Video;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    const-class v1, Lcom/comeback/data/ui/km2/bean/Km2User;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    const-class v1, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    const-class v1, Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    const-class v1, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    const-class v1, Lcom/comeback/data/ui/lutube/bean/LVideosBean;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    const-class v1, Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    const-class v1, Lcom/comeback/data/ui/fulao2/bean/VideosBean;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/a/f1/o;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lg/a/x;Lg/a/e0;ZLjava/util/Map;Ljava/util/Set;)Lg/a/e0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(",
            "Lg/a/x;",
            "TE;Z",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Lg/a/f1/n;",
            ">;",
            "Ljava/util/Set<",
            "Lg/a/m;",
            ">;)TE;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;

    const-class v1, Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    const-class v2, Lcom/comeback/data/ui/lutube/bean/LVideosBean;

    const-class v3, Lcom/comeback/data/ui/km2/bean/Km2User;

    const-class v4, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    const-class v5, Lcom/comeback/data/ui/km/bean/User;

    const-class v6, Lcom/comeback/data/ui/main/bean/CollectVideo;

    instance-of v7, p2, Lg/a/f1/n;

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 2
    :goto_0
    const-class v8, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 4
    const-class v1, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    .line 5
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 6
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 7
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy$a;

    .line 8
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy$a;Lcom/comeback/data/ui/fulao2/bean/ActorsBean;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 9
    :cond_1
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 10
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 11
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 12
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v6}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 13
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_main_bean_CollectVideoRealmProxy$a;

    .line 14
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/main/bean/CollectVideo;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_main_bean_CollectVideoRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_main_bean_CollectVideoRealmProxy$a;Lcom/comeback/data/ui/main/bean/CollectVideo;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/main/bean/CollectVideo;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 15
    :cond_2
    const-class v6, Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 16
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 17
    const-class v1, Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    .line 18
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 19
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 20
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;

    .line 21
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;Lcom/comeback/data/ui/slf/bean/SLFItemBean;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 22
    :cond_3
    const-class v6, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 23
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 24
    const-class v1, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 25
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 26
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 27
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    .line 28
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;Lcom/comeback/data/ui/ds/bean/DsItemBean;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/ds/bean/DsItemBean;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 29
    :cond_4
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 30
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 31
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 32
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v5}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 33
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_km_bean_UserRealmProxy$a;

    .line 34
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/km/bean/User;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_km_bean_UserRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_km_bean_UserRealmProxy$a;Lcom/comeback/data/ui/km/bean/User;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/km/bean/User;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 35
    :cond_5
    const-class v5, Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 36
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 37
    const-class v1, Lcom/comeback/data/ui/km/bean/Video;

    .line 38
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 39
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 40
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    .line 41
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/km/bean/Video;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;Lcom/comeback/data/ui/km/bean/Video;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/km/bean/Video;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 42
    :cond_6
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 43
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 44
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 45
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v4}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 46
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy$a;

    .line 47
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy$a;Lcom/comeback/data/ui/cucumber/bean/RealmVideo;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 48
    :cond_7
    const-class v4, Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 49
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 50
    const-class v1, Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    .line 51
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 52
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 53
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;

    .line 54
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;Lcom/comeback/data/ui/ba/bean/BaComicsBean;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 55
    :cond_8
    const-class v4, Lcom/comeback/data/ui/km2/bean/Km2Video;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 56
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 57
    const-class v1, Lcom/comeback/data/ui/km2/bean/Km2Video;

    .line 58
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 59
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 60
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_km2_bean_Km2VideoRealmProxy$a;

    .line 61
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/km2/bean/Km2Video;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_km2_bean_Km2VideoRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_km2_bean_Km2VideoRealmProxy$a;Lcom/comeback/data/ui/km2/bean/Km2Video;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/km2/bean/Km2Video;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 62
    :cond_9
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 63
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 64
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 65
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v3}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 66
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_km2_bean_Km2UserRealmProxy$a;

    .line 67
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/km2/bean/Km2User;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_km2_bean_Km2UserRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_km2_bean_Km2UserRealmProxy$a;Lcom/comeback/data/ui/km2/bean/Km2User;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/km2/bean/Km2User;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 68
    :cond_a
    const-class v3, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 69
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 70
    const-class v1, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    .line 71
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 72
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 73
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy$a;

    .line 74
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy$a;Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 75
    :cond_b
    const-class v3, Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 76
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 77
    const-class v1, Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    .line 78
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 79
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 80
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy$a;

    .line 81
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy$a;Lcom/comeback/data/ui/lutube/bean/LActorsBean;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 82
    :cond_c
    const-class v3, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 83
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 84
    const-class v1, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    .line 85
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 86
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 87
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;

    .line 88
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;Lcom/comeback/data/ui/hm/bean/ItemInfo;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/hm/bean/ItemInfo;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 89
    :cond_d
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 90
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 91
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 92
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v2}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 93
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;

    .line 94
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/lutube/bean/LVideosBean;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;Lcom/comeback/data/ui/lutube/bean/LVideosBean;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/lutube/bean/LVideosBean;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 95
    :cond_e
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 96
    iget-object v0, p1, Lg/a/x;->j:Lg/a/k0;

    .line 97
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 98
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 99
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy$a;

    .line 100
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy$a;Lcom/comeback/data/ui/main/bean/VideoCacheBean;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 101
    :cond_f
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 102
    iget-object v1, p1, Lg/a/x;->j:Lg/a/k0;

    .line 103
    invoke-virtual {v1}, Lg/a/k0;->a()V

    .line 104
    iget-object v1, v1, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v1, v0}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 105
    move-object v2, v0

    check-cast v2, Lio/realm/com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy$a;

    .line 106
    move-object v3, p2

    check-cast v3, Lcom/comeback/data/ui/fulao2/bean/VideosBean;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy;->copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy$a;Lcom/comeback/data/ui/fulao2/bean/VideosBean;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/fulao2/bean/VideosBean;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 107
    :cond_10
    invoke-static {v7}, Lg/a/f1/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public c(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lg/a/f1/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/e0;",
            ">;",
            "Lio/realm/internal/OsSchemaInfo;",
            ")",
            "Lg/a/f1/c;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lg/a/f1/o;->a(Ljava/lang/Class;)V

    .line 2
    const-class v0, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_main_bean_CollectVideoRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_main_bean_CollectVideoRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    const-class v0, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    const-class v0, Lcom/comeback/data/ui/km/bean/User;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_km_bean_UserRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_km_bean_UserRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    const-class v0, Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    const-class v0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6
    const-class v0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    const-class v0, Lcom/comeback/data/ui/km2/bean/Km2Video;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_km2_bean_Km2VideoRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_km2_bean_Km2VideoRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 20
    :cond_8
    const-class v0, Lcom/comeback/data/ui/km2/bean/Km2User;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_km2_bean_Km2UserRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_km2_bean_Km2UserRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 22
    :cond_9
    const-class v0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 24
    :cond_a
    const-class v0, Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 26
    :cond_b
    const-class v0, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 28
    :cond_c
    const-class v0, Lcom/comeback/data/ui/lutube/bean/LVideosBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 30
    :cond_d
    const-class v0, Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 31
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 32
    :cond_e
    const-class v0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 33
    invoke-static {p2}, Lio/realm/com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy$a;

    move-result-object p1

    return-object p1

    .line 34
    :cond_f
    invoke-static {p1}, Lg/a/f1/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/e0;",
            ">;",
            "Lio/realm/internal/OsObjectSchemaInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    const-class v1, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    invoke-static {}, Lio/realm/com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-static {}, Lio/realm/com_comeback_data_ui_main_bean_CollectVideoRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-static {}, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-static {}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lcom/comeback/data/ui/km/bean/User;

    invoke-static {}, Lio/realm/com_comeback_data_ui_km_bean_UserRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, Lcom/comeback/data/ui/km/bean/Video;

    invoke-static {}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    invoke-static {}, Lio/realm/com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v1, Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    invoke-static {}, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-class v1, Lcom/comeback/data/ui/km2/bean/Km2Video;

    invoke-static {}, Lio/realm/com_comeback_data_ui_km2_bean_Km2VideoRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class v1, Lcom/comeback/data/ui/km2/bean/Km2User;

    invoke-static {}, Lio/realm/com_comeback_data_ui_km2_bean_Km2UserRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v1, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    invoke-static {}, Lio/realm/com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-class v1, Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-static {}, Lio/realm/com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v1, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-static {}, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-class v1, Lcom/comeback/data/ui/lutube/bean/LVideosBean;

    invoke-static {}, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-class v1, Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-static {}, Lio/realm/com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-class v1, Lcom/comeback/data/ui/fulao2/bean/VideosBean;

    invoke-static {}, Lio/realm/com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/e0;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    return-object v0
.end method

.method public h(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/e0;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lg/a/f1/o;->a(Ljava/lang/Class;)V

    .line 2
    const-class v0, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ActorsBean"

    return-object p1

    .line 3
    :cond_0
    const-class v0, Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "CollectVideo"

    return-object p1

    .line 4
    :cond_1
    const-class v0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "SLFItemBean"

    return-object p1

    .line 5
    :cond_2
    const-class v0, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "DsItemBean"

    return-object p1

    .line 6
    :cond_3
    const-class v0, Lcom/comeback/data/ui/km/bean/User;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "User"

    return-object p1

    .line 7
    :cond_4
    const-class v0, Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "Video"

    return-object p1

    .line 8
    :cond_5
    const-class v0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "RealmVideo"

    return-object p1

    .line 9
    :cond_6
    const-class v0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "BaComicsBean"

    return-object p1

    .line 10
    :cond_7
    const-class v0, Lcom/comeback/data/ui/km2/bean/Km2Video;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "Km2Video"

    return-object p1

    .line 11
    :cond_8
    const-class v0, Lcom/comeback/data/ui/km2/bean/Km2User;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "Km2User"

    return-object p1

    .line 12
    :cond_9
    const-class v0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "MimeiComicItem"

    return-object p1

    .line 13
    :cond_a
    const-class v0, Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "LActorsBean"

    return-object p1

    .line 14
    :cond_b
    const-class v0, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "ItemInfo"

    return-object p1

    .line 15
    :cond_c
    const-class v0, Lcom/comeback/data/ui/lutube/bean/LVideosBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "LVideosBean"

    return-object p1

    .line 16
    :cond_d
    const-class v0, Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "VideoCacheBean"

    return-object p1

    .line 17
    :cond_e
    const-class v0, Lcom/comeback/data/ui/fulao2/bean/VideosBean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "VideosBean"

    return-object p1

    .line 18
    :cond_f
    invoke-static {p1}, Lg/a/f1/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public i(Ljava/lang/Class;Ljava/lang/Object;Lg/a/f1/p;Lg/a/f1/c;ZLjava/util/List;)Lg/a/e0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Lg/a/f1/p;",
            "Lg/a/f1/c;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/a/a;->i:Lg/a/a$d;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a$c;

    .line 2
    :try_start_0
    move-object v2, p2

    check-cast v2, Lg/a/a;

    move-object v1, v0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lg/a/a$c;->b(Lg/a/a;Lg/a/f1/p;Lg/a/f1/c;ZLjava/util/List;)V

    .line 3
    invoke-static {p1}, Lg/a/f1/o;->a(Ljava/lang/Class;)V

    .line 4
    const-class p2, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lio/realm/com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 7
    :cond_0
    :try_start_1
    const-class p2, Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    new-instance p2, Lio/realm/com_comeback_data_ui_main_bean_CollectVideoRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_main_bean_CollectVideoRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 10
    :cond_1
    :try_start_2
    const-class p2, Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    new-instance p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 13
    :cond_2
    :try_start_3
    const-class p2, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    new-instance p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 16
    :cond_3
    :try_start_4
    const-class p2, Lcom/comeback/data/ui/km/bean/User;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    new-instance p2, Lio/realm/com_comeback_data_ui_km_bean_UserRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_km_bean_UserRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 19
    :cond_4
    :try_start_5
    const-class p2, Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 20
    new-instance p2, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 21
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 22
    :cond_5
    :try_start_6
    const-class p2, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 23
    new-instance p2, Lio/realm/com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 24
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 25
    :cond_6
    :try_start_7
    const-class p2, Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 26
    new-instance p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 27
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 28
    :cond_7
    :try_start_8
    const-class p2, Lcom/comeback/data/ui/km2/bean/Km2Video;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 29
    new-instance p2, Lio/realm/com_comeback_data_ui_km2_bean_Km2VideoRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_km2_bean_Km2VideoRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 30
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 31
    :cond_8
    :try_start_9
    const-class p2, Lcom/comeback/data/ui/km2/bean/Km2User;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 32
    new-instance p2, Lio/realm/com_comeback_data_ui_km2_bean_Km2UserRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_km2_bean_Km2UserRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 33
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 34
    :cond_9
    :try_start_a
    const-class p2, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 35
    new-instance p2, Lio/realm/com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 36
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 37
    :cond_a
    :try_start_b
    const-class p2, Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 38
    new-instance p2, Lio/realm/com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 39
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 40
    :cond_b
    :try_start_c
    const-class p2, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 41
    new-instance p2, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 42
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 43
    :cond_c
    :try_start_d
    const-class p2, Lcom/comeback/data/ui/lutube/bean/LVideosBean;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 44
    new-instance p2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 45
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 46
    :cond_d
    :try_start_e
    const-class p2, Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 47
    new-instance p2, Lio/realm/com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 48
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 49
    :cond_e
    :try_start_f
    const-class p2, Lcom/comeback/data/ui/fulao2/bean/VideosBean;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 50
    new-instance p2, Lio/realm/com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 51
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 52
    :cond_f
    :try_start_10
    invoke-static {p1}, Lg/a/f1/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :catchall_0
    move-exception p1

    .line 53
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    .line 54
    throw p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
