.class public Lcom/comeback/data/ui/slf/adapter/ComicVAdapter$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ComicVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/slf/adapter/ComicVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/adapter/ComicVAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900f3

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/comeback/data/ui/slf/adapter/ComicVAdapter$b;->a:Landroid/widget/ImageView;

    const p1, 0x7f09031c

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/comeback/data/ui/slf/adapter/ComicVAdapter$b;->b:Landroid/widget/TextView;

    const p1, 0x7f0902c6

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/comeback/data/ui/slf/adapter/ComicVAdapter$b;->c:Landroid/widget/TextView;

    return-void
.end method
