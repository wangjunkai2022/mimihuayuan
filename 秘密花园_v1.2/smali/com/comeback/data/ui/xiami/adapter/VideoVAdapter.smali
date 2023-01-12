.class public Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "VideoVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter$b;
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

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xiami/bean/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xiami/bean/VideoInfo;",
            ">;",
            "Lf/a/a/a/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;->c:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;->b:Lf/a/a/a/a;

    .line 5
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;->d:I

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;->d:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter$b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter$b;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/xiami/bean/VideoInfo;

    .line 4
    invoke-virtual {p2}, Lcom/comeback/data/ui/xiami/bean/VideoInfo;->getVideoImage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter$b;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object v0, p1, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/xiami/bean/VideoInfo;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/xiami/bean/VideoInfo;->getVideoTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->k1(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter$a;-><init>(Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;Lcom/comeback/data/ui/xiami/bean/VideoInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c0226

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter$b;-><init>(Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;Landroid/view/View;)V

    return-object p2
.end method
