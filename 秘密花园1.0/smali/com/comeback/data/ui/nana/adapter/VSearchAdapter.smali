.class public Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "VSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/nana/adapter/VSearchAdapter$b;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLf/a/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;->b:Lf/a/a/a/a;

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
    check-cast p1, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter$b;

    .line 2
    new-instance p2, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter$a;

    invoke-direct {p2, p0}, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter$a;-><init>(Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;)V

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c01e5

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter$b;-><init>(Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;Landroid/view/View;)V

    return-object p2
.end method
