.class public Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "SpecialAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder;->a:Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder;->b:Lcom/comeback/data/ui/xiami/bean/VideoInfo;

    invoke-virtual {v1}, Lcom/comeback/data/ui/xiami/bean/VideoInfo;->getFeaturedId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder;->b:Lcom/comeback/data/ui/xiami/bean/VideoInfo;

    invoke-virtual {v2}, Lcom/comeback/data/ui/xiami/bean/VideoInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/comeback/data/ui/xiami/adapter/SpecialAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, p1}, Lcom/comeback/data/ui/xiami/SpecialDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
