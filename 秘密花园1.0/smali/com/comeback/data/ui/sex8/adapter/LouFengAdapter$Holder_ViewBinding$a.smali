.class public Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "LouFengAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder;->b:Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder;->ivHead:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder;->a:Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->getPic()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/comeback/data/ui/sex8/adapter/LouFengAdapter$Holder;->a:Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->l(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
