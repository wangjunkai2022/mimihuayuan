.class public Lcom/comeback/data/ui/main/adapter/MainAdapter2$Holder_ViewBinding$a;
.super Ld/c/b;
.source "MainAdapter2$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/main/adapter/MainAdapter2$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/main/adapter/MainAdapter2$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/main/adapter/MainAdapter2$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/adapter/MainAdapter2$Holder_ViewBinding;Lcom/comeback/data/ui/main/adapter/MainAdapter2$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/main/adapter/MainAdapter2$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/main/adapter/MainAdapter2$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/main/adapter/MainAdapter2$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/main/adapter/MainAdapter2$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/main/adapter/MainAdapter2$Holder;->b:Lcom/comeback/data/ui/main/adapter/MainAdapter2;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/main/adapter/MainAdapter2;->d:Lcom/comeback/data/ui/main/adapter/MainAdapter$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/main/adapter/MainAdapter2$Holder;->a:Lcom/comeback/data/ui/main/bean/HomeBean;

    invoke-interface {v0, p1}, Lcom/comeback/data/ui/main/adapter/MainAdapter$a;->a(Lcom/comeback/data/ui/main/bean/HomeBean;)V

    :cond_0
    return-void
.end method
