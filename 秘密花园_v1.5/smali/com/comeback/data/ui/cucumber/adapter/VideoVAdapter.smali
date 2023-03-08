.class public Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "VideoVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$b;
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
            "Lcom/comeback/data/ui/cucumber/bean/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video;",
            ">;",
            "Lf/a/a/a/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;->c:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;->b:Lf/a/a/a/a;

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;)Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;->getSelectionType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v3, 0xf

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 2
    invoke-static {v4, v3, v2}, Lf/b/a/a/a;->m(III)Lf/a/a/a/l/g;

    move-result-object v0

    .line 3
    iput-boolean v1, v0, Lf/a/a/a/l/g;->s:Z

    .line 4
    new-instance v1, Lcom/comeback/data/ui/cucumber/adapter/VideoHAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;->getMovList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/comeback/data/ui/cucumber/adapter/VideoHAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    return-object v1

    :cond_0
    const/4 v0, 0x3

    .line 5
    invoke-static {v0, v3, v2}, Lf/b/a/a/a;->m(III)Lf/a/a/a/l/g;

    move-result-object v0

    .line 6
    iput-boolean v1, v0, Lf/a/a/a/l/g;->s:Z

    .line 7
    new-instance v1, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;->getMovList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    return-object v1
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$b;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/cucumber/bean/Video;

    .line 3
    invoke-virtual {p2}, Lcom/comeback/data/ui/cucumber/bean/Video;->getAllCovers()Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;->getVertical_small()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$b;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMins()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$a;

    invoke-direct {v1, p0, p2}, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$a;-><init>(Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;Lcom/comeback/data/ui/cucumber/bean/Video;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$b;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovPackageId()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c017c

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$b;-><init>(Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;Landroid/view/View;)V

    return-object p2
.end method
