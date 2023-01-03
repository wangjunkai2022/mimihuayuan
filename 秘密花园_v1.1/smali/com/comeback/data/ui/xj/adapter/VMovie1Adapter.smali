.class public Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "VMovie1Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter$a;
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
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
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
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
            ">;",
            "Lf/a/a/a/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter;->c:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public synthetic d(Lcom/comeback/data/ui/xj/bean/VideoBean;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getVodid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getDefinition()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/comeback/data/ui/xj/PlayActivity;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter$a;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/xj/bean/VideoBean;

    .line 3
    iget-object v0, p1, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p2}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getCoverpic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter$a;->a:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lc/a/a/b/g/h;->M0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 5
    iget-object v0, p1, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/xj/bean/VideoBean;->isVip()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p1, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getExclusive()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter$a;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lf/e/a/j/r0/d/k;

    invoke-direct {v0, p0, p2}, Lf/e/a/j/r0/d/k;-><init>(Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter;Lcom/comeback/data/ui/xj/bean/VideoBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c0210

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter$a;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter$a;-><init>(Lcom/comeback/data/ui/xj/adapter/VMovie1Adapter;Landroid/view/View;)V

    return-object p2
.end method
