.class public Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "FengliuAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter$Holder;->b:Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter$Holder;->a:Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/fengliu/Info2Activity;->l(Landroid/content/Context;Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;)V

    return-void
.end method
