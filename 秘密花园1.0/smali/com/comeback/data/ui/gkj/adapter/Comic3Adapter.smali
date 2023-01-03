.class public Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "Comic3Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;
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
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public final d(Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getIntro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p6, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getBanner_url()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getCover_url()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/16 p3, 0x14

    invoke-static {p2, p4, p3}, Lc/a/a/b/g/h;->D0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 4
    new-instance p2, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$a;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$a;-><init>(Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;)V

    invoke-virtual {p5, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_comic_data()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;

    iget-object v2, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->c:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->d:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->a:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->b:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;->d(Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Z)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_comic_data()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;

    iget-object v2, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->g:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->h:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->e:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->f:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;->d(Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Z)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_comic_data()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;

    iget-object v2, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->k:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->l:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->i:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->j:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;->d(Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Z)V

    .line 5
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_comic_data()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;

    iget-object v2, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->o:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->p:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->m:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;->n:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;->d(Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c018e

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter$b;-><init>(Lcom/comeback/data/ui/gkj/adapter/Comic3Adapter;Landroid/view/View;)V

    return-object p2
.end method
