.class public Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "Video2Adapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder_ViewBinding;Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder;->a:Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->getLibrary_id()I

    move-result v1

    iget-object p1, p1, Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter$Holder;->a:Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/fruitPie/adapter/Video2Adapter;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/fruitPie/DetailActivity;->n(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
