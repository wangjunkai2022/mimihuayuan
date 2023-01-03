.class public Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "HomeTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;->r(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/avbobo/bean/ChannelList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment$a;->f:Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/comeback/data/ui/avbobo/bean/ChannelList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment$a;->f:Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;->p(Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment$a;->f:Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/ChannelList;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean;

    .line 6
    invoke-virtual {v2}, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "39/Ngvne"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    new-instance v3, Lf/a/a/a/l/c;

    invoke-direct {v3}, Lf/a/a/a/l/c;-><init>()V

    .line 8
    invoke-virtual {v3, v1, v1, v1, v1}, Lf/a/a/a/l/j;->p(IIII)V

    .line 9
    new-instance v4, Lcom/comeback/data/ui/commom/PPTAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v3, v2, v6}, Lcom/comeback/data/ui/commom/PPTAdapter;-><init>(Landroid/content/Context;Lf/a/a/a/a;Lcom/comeback/data/ui/commom/PPTAdapter$c;I)V

    .line 10
    iget-object v3, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 11
    new-instance v3, Lf/e/a/j/b/f/a;

    invoke-direct {v3, v0, v2}, Lf/e/a/j/b/f/a;-><init>(Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean;)V

    .line 12
    iput-object v3, v4, Lcom/comeback/data/ui/commom/PPTAdapter;->c:Lcom/comeback/data/ui/commom/PPTAdapter$b;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v2}, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0sfQgNfr373bjrn3"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v3, Lf/a/a/a/l/c;

    invoke-direct {v3}, Lf/a/a/a/l/c;-><init>()V

    .line 15
    iget-object v4, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v5, Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v2, v3}, Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean;Lf/a/a/a/a;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 16
    new-instance v3, Lf/a/a/a/l/g;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lf/a/a/a/l/g;-><init>(I)V

    const/16 v4, 0xf

    .line 17
    invoke-virtual {v3, v4, v1, v4, v1}, Lf/a/a/a/l/j;->q(IIII)V

    .line 18
    invoke-virtual {v3, v4}, Lf/a/a/a/l/g;->D(I)V

    .line 19
    invoke-virtual {v3, v4}, Lf/a/a/a/l/g;->C(I)V

    .line 20
    iput-boolean v1, v3, Lf/a/a/a/l/g;->s:Z

    .line 21
    iget-object v4, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v5, Lcom/comeback/data/ui/avbobo/adapter/HMovieItemAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean;->getLoadDataItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v6, v2, v3}, Lcom/comeback/data/ui/avbobo/adapter/HMovieItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto/16 :goto_0

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 22
    throw p1
.end method
