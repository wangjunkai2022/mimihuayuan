.class public Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$b;
.super Ld/c/b;
.source "ShortVideoAdapter$TiktopHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;-><init>(Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$b;->c:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$b;->c:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mIvLike:Landroid/widget/ImageView;

    const v0, 0x7f0e0020

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
