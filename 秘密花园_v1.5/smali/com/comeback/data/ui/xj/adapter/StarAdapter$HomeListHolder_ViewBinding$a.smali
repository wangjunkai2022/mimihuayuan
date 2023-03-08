.class public Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder_ViewBinding$a;
.super Ld/c/b;
.source "StarAdapter$HomeListHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder_ViewBinding;-><init>(Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder_ViewBinding;Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/xj/adapter/StarAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder;->b:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->w(Landroid/content/Context;Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;)V

    return-void
.end method
