.class public Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "Comic4Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090200

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0902e5

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter$a;->b:Landroid/widget/TextView;

    const p1, 0x7f0900f5

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/Comic4Adapter$a;->a:Landroid/widget/ImageView;

    return-void
.end method
