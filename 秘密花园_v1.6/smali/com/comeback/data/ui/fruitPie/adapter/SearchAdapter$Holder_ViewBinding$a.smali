.class public Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "SearchAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder;->a:Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/SearchResult$DataEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/fruitPie/bean/SearchResult$DataEntity;->getLibrary_id()I

    move-result v1

    iget-object p1, p1, Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter$Holder;->a:Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/fruitPie/adapter/SearchAdapter;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/fruitPie/DetailActivity;->n(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
