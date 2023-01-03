.class public Lcom/comeback/data/ui/commom/PPTAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "PPTAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/commom/PPTAdapter$b;,
        Lcom/comeback/data/ui/commom/PPTAdapter$c;,
        Lcom/comeback/data/ui/commom/PPTAdapter$d;
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

.field public b:Lcom/comeback/data/ui/commom/PPTAdapter$c;

.field public c:Lcom/comeback/data/ui/commom/PPTAdapter$b;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/a/a/a/a;Lcom/comeback/data/ui/commom/PPTAdapter$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/commom/PPTAdapter;->a:Lf/a/a/a/a;

    .line 3
    iput-object p3, p0, Lcom/comeback/data/ui/commom/PPTAdapter;->b:Lcom/comeback/data/ui/commom/PPTAdapter$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf/a/a/a/a;Lcom/comeback/data/ui/commom/PPTAdapter$c;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/comeback/data/ui/commom/PPTAdapter;->a:Lf/a/a/a/a;

    .line 6
    iput p4, p0, Lcom/comeback/data/ui/commom/PPTAdapter;->d:I

    .line 7
    iput-object p3, p0, Lcom/comeback/data/ui/commom/PPTAdapter;->b:Lcom/comeback/data/ui/commom/PPTAdapter$c;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/commom/PPTAdapter;->a:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/commom/PPTAdapter$d;

    .line 2
    iget p2, p0, Lcom/comeback/data/ui/commom/PPTAdapter;->d:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p1, Lcom/comeback/data/ui/commom/PPTAdapter$d;->a:Lcom/youth/banner/Banner;

    new-instance v0, Lf/e/a/k/a;

    invoke-direct {v0}, Lf/e/a/k/a;-><init>()V

    invoke-virtual {p2, v0}, Lcom/youth/banner/Banner;->setImageLoader(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p1, Lcom/comeback/data/ui/commom/PPTAdapter$d;->a:Lcom/youth/banner/Banner;

    new-instance v0, Lf/e/a/k/e;

    invoke-direct {v0}, Lf/e/a/k/e;-><init>()V

    invoke-virtual {p2, v0}, Lcom/youth/banner/Banner;->setImageLoader(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    .line 5
    :goto_0
    iget-object p2, p1, Lcom/comeback/data/ui/commom/PPTAdapter$d;->a:Lcom/youth/banner/Banner;

    iget-object v0, p0, Lcom/comeback/data/ui/commom/PPTAdapter;->b:Lcom/comeback/data/ui/commom/PPTAdapter$c;

    invoke-interface {v0}, Lcom/comeback/data/ui/commom/PPTAdapter$c;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/youth/banner/Banner;->setImages(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 6
    iget-object p2, p0, Lcom/comeback/data/ui/commom/PPTAdapter;->b:Lcom/comeback/data/ui/commom/PPTAdapter$c;

    invoke-interface {p2}, Lcom/comeback/data/ui/commom/PPTAdapter$c;->getTitles()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/comeback/data/ui/commom/PPTAdapter;->b:Lcom/comeback/data/ui/commom/PPTAdapter$c;

    invoke-interface {p2}, Lcom/comeback/data/ui/commom/PPTAdapter$c;->getTitles()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lcom/comeback/data/ui/commom/PPTAdapter;->b:Lcom/comeback/data/ui/commom/PPTAdapter$c;

    invoke-interface {v0}, Lcom/comeback/data/ui/commom/PPTAdapter$c;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 7
    iget-object p2, p1, Lcom/comeback/data/ui/commom/PPTAdapter$d;->a:Lcom/youth/banner/Banner;

    iget-object v0, p0, Lcom/comeback/data/ui/commom/PPTAdapter;->b:Lcom/comeback/data/ui/commom/PPTAdapter$c;

    invoke-interface {v0}, Lcom/comeback/data/ui/commom/PPTAdapter$c;->getTitles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/youth/banner/Banner;->setBannerTitles(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 8
    :cond_1
    iget-object p2, p1, Lcom/comeback/data/ui/commom/PPTAdapter$d;->a:Lcom/youth/banner/Banner;

    invoke-virtual {p2}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    .line 9
    iget-object p1, p1, Lcom/comeback/data/ui/commom/PPTAdapter$d;->a:Lcom/youth/banner/Banner;

    new-instance p2, Lcom/comeback/data/ui/commom/PPTAdapter$a;

    invoke-direct {p2, p0}, Lcom/comeback/data/ui/commom/PPTAdapter$a;-><init>(Lcom/comeback/data/ui/commom/PPTAdapter;)V

    invoke-virtual {p1, p2}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c0173

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/commom/PPTAdapter$d;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/commom/PPTAdapter$d;-><init>(Lcom/comeback/data/ui/commom/PPTAdapter;Landroid/view/View;)V

    return-object p2
.end method
