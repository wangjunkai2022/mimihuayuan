.class public Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "ComicTypeFragment.java"


# instance fields
.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static p(Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;Ljava/util/List;)V
    .locals 10

    if-eqz p0, :cond_6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    .line 2
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getModule()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VA0ODQg="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getClient_style()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VA0ODQgsCA=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x3

    const-string v4, "Gg=="

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 5
    iget-object v5, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/gkj/adapter/TitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4, v1}, Lcom/comeback/data/ui/gkj/adapter/TitleAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 6
    new-instance v1, Lf/a/a/a/l/g;

    invoke-direct {v1, v3}, Lf/a/a/a/l/g;-><init>(I)V

    const/4 v3, 0x5

    .line 7
    invoke-virtual {v1, v3}, Lf/a/a/a/l/g;->D(I)V

    .line 8
    invoke-virtual {v1, v3}, Lf/a/a/a/l/g;->C(I)V

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lf/a/a/a/l/g;->s:Z

    .line 10
    iget-object v3, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/gkj/adapter/Comic1Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_comic_data()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {v6, v2, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lcom/comeback/data/ui/gkj/adapter/Comic1Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto/16 :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getClient_style()Ljava/lang/String;

    move-result-object v1

    const-string v5, "VA0ODQgsCg=="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 13
    iget-object v5, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/gkj/adapter/TitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4, v1}, Lcom/comeback/data/ui/gkj/adapter/TitleAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 14
    new-instance v1, Lf/a/a/a/l/i;

    invoke-direct {v1}, Lf/a/a/a/l/i;-><init>()V

    .line 15
    iget-object v4, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v5, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_comic_data()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v6, v3, v1}, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getClient_style()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VA0ODQgsCw=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 18
    iget-object v3, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v5, Lcom/comeback/data/ui/gkj/adapter/TitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4, v1}, Lcom/comeback/data/ui/gkj/adapter/TitleAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v3, v5}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 19
    new-instance v1, Lf/a/a/a/l/i;

    invoke-direct {v1}, Lf/a/a/a/l/i;-><init>()V

    .line 20
    iget-object v3, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0, v1}, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;Lf/a/a/a/a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getClient_style()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VA0ODQgsDQ=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22
    new-instance v1, Lf/a/a/a/l/i;

    invoke-direct {v1}, Lf/a/a/a/l/i;-><init>()V

    .line 23
    iget-object v3, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0, v1}, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;Lf/a/a/a/a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 24
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getModule()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VQMNCg4B"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    new-instance v1, Lf/a/a/a/l/l;

    invoke-direct {v1}, Lf/a/a/a/l/l;-><init>()V

    .line 26
    invoke-virtual {v1, v2, v2, v2, v2}, Lf/a/a/a/l/j;->p(IIII)V

    .line 27
    new-instance v2, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;-><init>(Landroid/content/Context;Lf/a/a/a/a;Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;)V

    .line 28
    iget-object v0, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    const/4 p0, 0x0

    .line 29
    throw p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "XgY="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;->j:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0c010d

    return v0
.end method

.method public l(I)V
    .locals 4

    .line 1
    invoke-static {}, Lf/e/a/j/m/p/e;->b()Lf/e/a/j/m/p/c;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;->j:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "UA4MBgofZkcKFlE="

    .line 3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Ww0ABR8aVl0="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "XgwHARM="

    const-string v3, "RwMEAQ=="

    invoke-static {v2, v1, v0, v3}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "WwsODR8="

    .line 5
    invoke-static {v2, v1, v0, v3}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BlI="

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1, v1}, Lf/e/a/j/m/p/c;->g(Ljava/util/HashMap;)Lm/e;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment$a;-><init>(Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
