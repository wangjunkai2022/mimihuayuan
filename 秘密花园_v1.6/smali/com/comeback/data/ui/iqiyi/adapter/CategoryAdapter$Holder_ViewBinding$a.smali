.class public Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "CategoryAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder;->a:Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    .line 4
    iget-object v1, p1, Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder;->b:Lcom/comeback/data/ui/iqiyi/bean/Category;

    invoke-virtual {v1}, Lcom/comeback/data/ui/iqiyi/bean/Category;->getCateId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/comeback/data/ui/iqiyi/adapter/CategoryAdapter$Holder;->b:Lcom/comeback/data/ui/iqiyi/bean/Category;

    invoke-virtual {p1}, Lcom/comeback/data/ui/iqiyi/bean/Category;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/iqiyi/CategoryActivity;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
