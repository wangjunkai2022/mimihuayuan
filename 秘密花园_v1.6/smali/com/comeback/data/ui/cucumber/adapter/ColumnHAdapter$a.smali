.class public Lcom/comeback/data/ui/cucumber/adapter/ColumnHAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ColumnHAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cucumber/adapter/ColumnHAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/adapter/ColumnHAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090200

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ColumnHAdapter$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
