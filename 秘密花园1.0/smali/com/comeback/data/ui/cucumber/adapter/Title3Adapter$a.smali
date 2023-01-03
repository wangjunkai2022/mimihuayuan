.class public Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter$a;
.super Ljava/lang/Object;
.source "Title3Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter$a;->a:Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter$a;->a:Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter;->c:Lcom/comeback/data/ui/cucumber/bean/Column$DataBean;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean;->getModName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter$a;->a:Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter;

    .line 5
    iget-object v1, v1, Lcom/comeback/data/ui/cucumber/adapter/Title3Adapter;->c:Lcom/comeback/data/ui/cucumber/bean/Column$DataBean;

    .line 6
    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean;->getSubclass()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/comeback/data/ui/cucumber/ColumnMoreActivity;->l(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
