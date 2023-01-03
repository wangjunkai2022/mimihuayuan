.class public Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "Comic4Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter$a;
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
.method public constructor <init>(Landroid/content/Context;Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;Lf/a/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter$a;

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_comic_data()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_comic_data()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_comic_data()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getBanner_url()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p1, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter$a;->a:Landroid/widget/ImageView;

    invoke-static {p2, v1, v0}, Lc/a/a/b/g/h;->D0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 4
    iget-object p2, p1, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter$a;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Gg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p1, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    new-instance p2, Lcom/comeback/data/ui/gkj/adapter/ItemAdapter;

    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/comeback/data/ui/gkj/adapter/ItemAdapter;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object p1, p1, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_comic_data()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c018f

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter$a;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter$a;-><init>(Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;Landroid/view/View;)V

    return-object p2
.end method
