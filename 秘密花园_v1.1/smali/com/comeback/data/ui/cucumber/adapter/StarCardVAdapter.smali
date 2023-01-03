.class public Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "StarCardVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$b;
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
            "Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;",
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
            "Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;",
            ">;",
            "Lf/a/a/a/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;->c:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$b;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;

    .line 3
    invoke-virtual {p2}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;->getActorDTO()Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$b;->a:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object v1, p1, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->getNameCn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p1, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->getBriefIntroduction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p1, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$b;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->getVideosCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "F4vgzI7OiNT64Q=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v1, Lcom/comeback/data/ui/cucumber/adapter/VideoList2Adapter;

    iget-object v2, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/comeback/data/ui/cucumber/adapter/VideoList2Adapter;-><init>(Landroid/content/Context;)V

    .line 9
    iget-object v2, p1, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$b;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object v2, p1, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$b;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    invoke-virtual {p2}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;->getMovieList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$a;

    invoke-direct {p2, p0, v0}, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$a;-><init>(Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c0166

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$b;-><init>(Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;Landroid/view/View;)V

    return-object p2
.end method
