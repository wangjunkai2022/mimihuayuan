.class public Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "VTitleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/nana/adapter/VTitleAdapter$b;
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

.field public c:Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;Lf/a/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;->c:Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter$b;

    .line 2
    iget-object p2, p1, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter$b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;->c:Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p1, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter$b;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;->c:Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;->getSearch()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter$b;->b:Landroid/widget/TextView;

    new-instance p2, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter$a;

    invoke-direct {p2, p0}, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter$a;-><init>(Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c01f5

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter$b;-><init>(Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;Landroid/view/View;)V

    return-object p2
.end method
