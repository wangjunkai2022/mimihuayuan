.class public Lcom/comeback/data/ui/mimei/adapter/HomeTitleAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "HomeTitleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/mimei/adapter/HomeTitleAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/comeback/data/ui/mimei/adapter/HomeTitleAdapter$a;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/mimei/adapter/HomeTitleAdapter$a;->a:Landroid/widget/TextView;

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c01d2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/mimei/adapter/HomeTitleAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/mimei/adapter/HomeTitleAdapter$a;-><init>(Lcom/comeback/data/ui/mimei/adapter/HomeTitleAdapter;Landroid/view/View;)V

    return-object p2
.end method
