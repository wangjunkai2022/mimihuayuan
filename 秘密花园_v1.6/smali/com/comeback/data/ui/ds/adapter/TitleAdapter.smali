.class public Lcom/comeback/data/ui/ds/adapter/TitleAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "TitleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ds/adapter/TitleAdapter$b;
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

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILf/a/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;->a:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;->c:I

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;->b:Lf/a/a/a/a;

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
    check-cast p1, Lcom/comeback/data/ui/ds/adapter/TitleAdapter$b;

    .line 2
    iget p2, p0, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;->c:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 3
    iget-object p2, p1, Lcom/comeback/data/ui/ds/adapter/TitleAdapter$b;->a:Landroid/widget/TextView;

    const-string v1, "0sbEgcXF0LDOg6jPn/bo"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 4
    iget-object p2, p1, Lcom/comeback/data/ui/ds/adapter/TitleAdapter$b;->a:Landroid/widget/TextView;

    const-string v1, "0ezxjMr/35Xv"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 5
    iget-object p2, p1, Lcom/comeback/data/ui/ds/adapter/TitleAdapter$b;->a:Landroid/widget/TextView;

    const-string v1, "0c/JgsbZ0LT+gZfineD4g7ry"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    .line 6
    iget-object p2, p1, Lcom/comeback/data/ui/ds/adapter/TitleAdapter$b;->a:Landroid/widget/TextView;

    const-string v1, "0O7/gNbT3KXvgJjF"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p1, Lcom/comeback/data/ui/ds/adapter/TitleAdapter$b;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :cond_3
    :goto_0
    iget p2, p0, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;->c:I

    if-eq p2, v0, :cond_4

    .line 9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/comeback/data/ui/ds/adapter/TitleAdapter$a;

    invoke-direct {p2, p0}, Lcom/comeback/data/ui/ds/adapter/TitleAdapter$a;-><init>(Lcom/comeback/data/ui/ds/adapter/TitleAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c0186

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/ds/adapter/TitleAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/ds/adapter/TitleAdapter$b;-><init>(Lcom/comeback/data/ui/ds/adapter/TitleAdapter;Landroid/view/View;)V

    return-object p2
.end method
