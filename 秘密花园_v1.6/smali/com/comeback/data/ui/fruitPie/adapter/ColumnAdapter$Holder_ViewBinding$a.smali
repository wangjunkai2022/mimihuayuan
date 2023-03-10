.class public Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "ColumnAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder;->a:Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/Columnist;

    invoke-virtual {v1}, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->getColumnist_id()I

    move-result v1

    const-string v2, "BQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/comeback/data/ui/fruitPie/adapter/ColumnAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/Columnist;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->getColumnist_name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/comeback/data/ui/fruitPie/ActorDetailActivity;->t(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
