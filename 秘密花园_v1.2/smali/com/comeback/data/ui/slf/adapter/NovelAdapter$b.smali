.class public Lcom/comeback/data/ui/slf/adapter/NovelAdapter$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NovelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/slf/adapter/NovelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/adapter/NovelAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902e5

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/comeback/data/ui/slf/adapter/NovelAdapter$b;->a:Landroid/widget/TextView;

    const p1, 0x7f0902ce

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/comeback/data/ui/slf/adapter/NovelAdapter$b;->b:Landroid/widget/TextView;

    const p1, 0x7f09033c

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/comeback/data/ui/slf/adapter/NovelAdapter$b;->c:Landroid/widget/TextView;

    const p1, 0x7f0902a8

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/comeback/data/ui/slf/adapter/NovelAdapter$b;->d:Landroid/widget/TextView;

    return-void
.end method
