.class public Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "HeadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;
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

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLf/a/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->a:Landroid/content/Context;

    .line 3
    iput-boolean p2, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->c:Z

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;

    .line 2
    new-instance p2, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;-><init>(Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;)V

    .line 3
    iget-object v0, p1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;->a:Landroid/widget/TextView;

    const-string v1, "0f7jgv3D3Yv5gKrR"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;->b:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "0d7Ig//I373hjpXr"

    goto :goto_0

    :cond_0
    const-string v1, "0tLsjMTH373hjpXr"

    :goto_0
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;->c:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "0ezLjObj34/YgaDc"

    goto :goto_1

    :cond_1
    const-string v1, "0ezLjObj3IP8jpvT"

    :goto_1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c01d1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;-><init>(Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;Landroid/view/View;)V

    return-object p2
.end method
