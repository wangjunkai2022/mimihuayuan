.class public Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "NVideo2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter$b;
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
            "Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;",
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
            "Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;",
            ">;",
            "Lf/a/a/a/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;->c:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter$b;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    .line 3
    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;->getCover()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter$b;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter$b;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :try_start_0
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter$b;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;->getVideoTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lc/a/a/b/g/h;->h1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_0
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter$a;

    invoke-direct {v0, p0, p2}, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter$a;-><init>(Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c01a6

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter$b;-><init>(Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;Landroid/view/View;)V

    return-object p2
.end method
