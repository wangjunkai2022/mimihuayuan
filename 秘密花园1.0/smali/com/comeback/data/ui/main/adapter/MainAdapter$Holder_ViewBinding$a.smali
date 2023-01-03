.class public Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "MainAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;->b:Lcom/comeback/data/ui/main/adapter/MainAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/main/adapter/MainAdapter;->d:Lcom/comeback/data/ui/main/adapter/MainAdapter$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/main/adapter/MainAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/HomeBean;

    invoke-interface {v0, p1}, Lcom/comeback/data/ui/main/adapter/MainAdapter$a;->a(Lcom/comeback/data/ui/main/bean/HomeBean;)V

    :cond_0
    return-void
.end method
