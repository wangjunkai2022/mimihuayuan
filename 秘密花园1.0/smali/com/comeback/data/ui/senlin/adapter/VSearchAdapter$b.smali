.class public Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090084

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;->a:Landroid/widget/EditText;

    return-void
.end method
