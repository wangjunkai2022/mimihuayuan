.class public Lcom/comeback/data/ui/nana/adapter/BannerAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/nana/adapter/BannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/nana/viewpager/PageView;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/adapter/BannerAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090236

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/nana/viewpager/PageView;

    iput-object p1, p0, Lcom/comeback/data/ui/nana/adapter/BannerAdapter$a;->a:Lcom/comeback/data/ui/nana/viewpager/PageView;

    return-void
.end method
