.class public Lcom/comeback/data/base/BannerAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "BannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/base/BannerAdapter$a;,
        Lcom/comeback/data/base/BannerAdapter$b;
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
.field public a:Lf/a/a/a/a;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/e/a/g/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/comeback/data/base/BannerAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/a/a/a/a;Ljava/util/List;Lcom/comeback/data/base/BannerAdapter$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lf/a/a/a/a;",
            "Ljava/util/List<",
            "Lf/e/a/g/a;",
            ">;",
            "Lcom/comeback/data/base/BannerAdapter$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/base/BannerAdapter;->a:Lf/a/a/a/a;

    .line 3
    iput-object p4, p0, Lcom/comeback/data/base/BannerAdapter;->c:Lcom/comeback/data/base/BannerAdapter$a;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/base/BannerAdapter;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BannerAdapter;->a:Lf/a/a/a/a;

    return-object v0
.end method

.method public synthetic d(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BannerAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/e/a/g/a;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BannerAdapter;->c:Lcom/comeback/data/base/BannerAdapter$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p2}, Lf/e/a/g/a;->getId()Ljava/lang/String;

    move-result-object p2

    check-cast v0, Lf/e/a/j/a/e;

    invoke-virtual {v0, p2, p1}, Lf/e/a/j/a/e;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lf/e/a/g/a;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/base/BannerAdapter$b;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/base/BannerAdapter$b;->a:Lcom/youth/banner/Banner;

    new-instance v1, Lf/e/a/k/e;

    invoke-direct {v1}, Lf/e/a/k/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setImageLoader(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BannerAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/e/a/g/a;

    invoke-interface {v2}, Lf/e/a/g/a;->getCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/comeback/data/base/BannerAdapter$b;->a:Lcom/youth/banner/Banner;

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setImages(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/comeback/data/base/BannerAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/e/a/g/a;

    .line 10
    invoke-interface {v2}, Lf/e/a/g/a;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p1, Lcom/comeback/data/base/BannerAdapter$b;->a:Lcom/youth/banner/Banner;

    invoke-virtual {v1, v0}, Lcom/youth/banner/Banner;->setBannerTitles(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 12
    iget-object v0, p1, Lcom/comeback/data/base/BannerAdapter$b;->a:Lcom/youth/banner/Banner;

    invoke-virtual {v0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    .line 13
    iget-object p1, p1, Lcom/comeback/data/base/BannerAdapter$b;->a:Lcom/youth/banner/Banner;

    new-instance v0, Lf/e/a/f/a;

    invoke-direct {v0, p0, p2}, Lf/e/a/f/a;-><init>(Lcom/comeback/data/base/BannerAdapter;I)V

    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c0163

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/base/BannerAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/base/BannerAdapter$b;-><init>(Lcom/comeback/data/base/BannerAdapter;Landroid/view/View;)V

    return-object p2
.end method
