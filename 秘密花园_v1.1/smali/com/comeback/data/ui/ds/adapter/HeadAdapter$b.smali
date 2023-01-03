.class public Lcom/comeback/data/ui/ds/adapter/HeadAdapter$b;
.super Ljava/lang/Object;
.source "HeadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ds/adapter/HeadAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/ds/adapter/HeadAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ds/adapter/HeadAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/adapter/HeadAdapter$b;->a:Lcom/comeback/data/ui/ds/adapter/HeadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/ds/adapter/HeadAdapter$b;->a:Lcom/comeback/data/ui/ds/adapter/HeadAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/ds/adapter/HeadAdapter;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/comeback/data/ui/ds/RankActivity;->o(Landroid/content/Context;)V

    return-void
.end method
