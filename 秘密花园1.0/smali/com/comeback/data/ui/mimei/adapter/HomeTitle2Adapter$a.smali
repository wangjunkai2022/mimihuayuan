.class public Lcom/comeback/data/ui/mimei/adapter/HomeTitle2Adapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomeTitle2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/mimei/adapter/HomeTitle2Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/adapter/HomeTitle2Adapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902dc

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/HomeTitle2Adapter$a;->a:Landroid/widget/TextView;

    return-void
.end method
