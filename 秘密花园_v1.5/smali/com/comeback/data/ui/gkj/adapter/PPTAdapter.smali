.class public Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "PPTAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lf/a/a/a/a;

.field public c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/a/a/a/a;Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;->b:Lf/a/a/a/a;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_banner_data()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;

    .line 5
    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dC0uLSg="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;->getComic_id()I

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_1
    check-cast p1, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$b;

    .line 9
    iget-object p2, p1, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$b;->a:Lcom/youth/banner/Banner;

    new-instance v1, Lf/e/a/k/d;

    invoke-direct {v1}, Lf/e/a/k/d;-><init>()V

    invoke-virtual {p2, v1}, Lcom/youth/banner/Banner;->setImageLoader(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    .line 10
    iget-object p2, p1, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$b;->a:Lcom/youth/banner/Banner;

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_banner_data()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/youth/banner/Banner;->setImages(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 11
    iget-object p2, p1, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$b;->a:Lcom/youth/banner/Banner;

    invoke-virtual {p2, v0}, Lcom/youth/banner/Banner;->setBannerTitles(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 12
    iget-object p2, p1, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$b;->a:Lcom/youth/banner/Banner;

    invoke-virtual {p2}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    .line 13
    iget-object p1, p1, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$b;->a:Lcom/youth/banner/Banner;

    new-instance p2, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$a;

    invoke-direct {p2, p0}, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$a;-><init>(Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;)V

    invoke-virtual {p1, p2}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c017e

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$b;-><init>(Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;Landroid/view/View;)V

    return-object p2
.end method
