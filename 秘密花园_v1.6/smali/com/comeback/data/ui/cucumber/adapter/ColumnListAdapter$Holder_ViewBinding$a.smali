.class public Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "ColumnListAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder;->a:Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder;->b:Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->getNavId()I

    move-result v1

    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/ColumnListAdapter$Holder;->b:Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->getNavCls()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;->v(Landroid/content/Context;II)V

    return-void
.end method
