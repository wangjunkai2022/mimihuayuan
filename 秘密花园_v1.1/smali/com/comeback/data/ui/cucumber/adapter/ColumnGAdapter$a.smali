.class public Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter$a;
.super Ljava/lang/Object;
.source "ColumnGAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;

.field public final synthetic b:Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter;Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter$a;->b:Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter$a;->a:Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter$a;->b:Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter$a;->a:Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->getNavId()I

    move-result v0

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/ColumnGAdapter$a;->a:Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->getNavCls()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;->v(Landroid/content/Context;II)V

    return-void
.end method
