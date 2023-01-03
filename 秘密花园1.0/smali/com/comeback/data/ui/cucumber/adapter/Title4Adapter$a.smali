.class public Lcom/comeback/data/ui/cucumber/adapter/Title4Adapter$a;
.super Ljava/lang/Object;
.source "Title4Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/adapter/Title4Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/cucumber/adapter/Title4Adapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/adapter/Title4Adapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/Title4Adapter$a;->a:Lcom/comeback/data/ui/cucumber/adapter/Title4Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/Title4Adapter$a;->a:Lcom/comeback/data/ui/cucumber/adapter/Title4Adapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/Title4Adapter;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/comeback/data/ui/cucumber/ActorActivity;->v(Landroid/content/Context;)V

    return-void
.end method
