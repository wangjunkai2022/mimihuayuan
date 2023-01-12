.class public Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$a;
.super Ld/c/b;
.source "ShortVideoAdapter$TiktopHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;-><init>(Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;->a:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;->b:Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;

    invoke-virtual {v1}, Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;->b:Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;

    invoke-virtual {v2}, Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;->b:Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;

    invoke-virtual {p1}, Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;->getHeadico()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
