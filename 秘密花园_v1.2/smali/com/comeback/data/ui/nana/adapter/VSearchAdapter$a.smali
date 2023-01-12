.class public Lcom/comeback/data/ui/nana/adapter/VSearchAdapter$a;
.super Ljava/lang/Object;
.source "VSearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter$a;->a:Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09030b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter$a;->a:Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/nana/adapter/VSearchAdapter;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/comeback/data/ui/nana/SearchActivity;->n(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
