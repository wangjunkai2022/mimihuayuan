.class public Lcom/comeback/data/ui/bale/adapter/TitleAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "TitleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/bale/adapter/TitleAdapter$b;
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

.field public c:Lcom/comeback/data/ui/bale/bean/VideoList$ResultBean;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/comeback/data/ui/bale/bean/VideoList$ResultBean;ILf/a/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/bale/adapter/TitleAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/bale/adapter/TitleAdapter;->c:Lcom/comeback/data/ui/bale/bean/VideoList$ResultBean;

    .line 4
    iput p3, p0, Lcom/comeback/data/ui/bale/adapter/TitleAdapter;->d:I

    .line 5
    iput-object p4, p0, Lcom/comeback/data/ui/bale/adapter/TitleAdapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/adapter/TitleAdapter;->b:Lf/a/a/a/a;

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
    check-cast p1, Lcom/comeback/data/ui/bale/adapter/TitleAdapter$b;

    .line 2
    iget-object p2, p1, Lcom/comeback/data/ui/bale/adapter/TitleAdapter$b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/bale/adapter/TitleAdapter;->c:Lcom/comeback/data/ui/bale/bean/VideoList$ResultBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/bale/bean/VideoList$ResultBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/bale/adapter/TitleAdapter;->c:Lcom/comeback/data/ui/bale/bean/VideoList$ResultBean;

    invoke-virtual {p2}, Lcom/comeback/data/ui/bale/bean/VideoList$ResultBean;->getIcon()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/comeback/data/ui/bale/adapter/TitleAdapter$b;->c:Landroid/widget/ImageView;

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 6
    invoke-static {v1}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v1

    new-instance v2, Lf/e/a/i/b/a/a;

    invoke-direct {v2, p2}, Lf/e/a/i/b/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p2

    const v1, 0x7f0800a1

    .line 7
    invoke-virtual {p2, v1}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p2

    check-cast p2, Lf/d/a/i;

    .line 8
    invoke-virtual {p2, v0}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    .line 9
    :goto_0
    iget-object p1, p1, Lcom/comeback/data/ui/bale/adapter/TitleAdapter$b;->b:Landroid/widget/TextView;

    new-instance p2, Lcom/comeback/data/ui/bale/adapter/TitleAdapter$a;

    invoke-direct {p2, p0}, Lcom/comeback/data/ui/bale/adapter/TitleAdapter$a;-><init>(Lcom/comeback/data/ui/bale/adapter/TitleAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c0156

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/bale/adapter/TitleAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/bale/adapter/TitleAdapter$b;-><init>(Lcom/comeback/data/ui/bale/adapter/TitleAdapter;Landroid/view/View;)V

    return-object p2
.end method
