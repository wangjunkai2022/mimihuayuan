.class public Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "HotWordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$a;,
        Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;
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

.field public b:Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$a;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/HotWords$DataBeanX$DataBean;",
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
            "Lcom/comeback/data/ui/maomi/bean/HotWords$DataBeanX$DataBean;",
            ">;",
            "Lf/a/a/a/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter;->c:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter;->a:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter;->a:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;

    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/maomi/bean/HotWords$DataBeanX$DataBean;

    .line 2
    iput-object p2, p1, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/HotWords$DataBeanX$DataBean;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/maomi/bean/HotWords$DataBeanX$DataBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p2, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;

    const v0, 0x7f0c01e0

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;-><init>(Landroid/view/View;Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter;)V

    return-object p2
.end method
