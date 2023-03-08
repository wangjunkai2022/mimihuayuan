.class public Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "Comic2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;
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
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;",
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
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;",
            ">;",
            "Lf/a/a/a/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter;->c:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;

    .line 3
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->isNew()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getIs_recommend()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getStatus()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getDump_status()I

    move-result v1

    if-ne v1, v4, :cond_2

    const-string v1, "0szvg9Dg"

    goto :goto_2

    :cond_2
    const-string v1, "3939jNbO"

    :goto_2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getScore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getUpdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;->g:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getHot()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getCover_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;->a:Landroid/widget/ImageView;

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lc/a/a/b/g/h;->D0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$a;

    invoke-direct {v0, p0, p2}, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$a;-><init>(Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter;Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c01a8

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter$b;-><init>(Lcom/comeback/data/ui/gkj/adapter/Comic2Adapter;Landroid/view/View;)V

    return-object p2
.end method
