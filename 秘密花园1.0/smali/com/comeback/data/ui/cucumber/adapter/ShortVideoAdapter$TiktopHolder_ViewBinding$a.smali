.class public Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$a;
.super Ld/c/b;
.source "ShortVideoAdapter$TiktopHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;-><init>(Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->b:Lcom/comeback/data/ui/cucumber/bean/Video;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/Video;->getInviteCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0dDCgvf60b3Eg7vxneLTIlOG3MWN8pYfm8mDgv3ihfmahPfag9S/2tH3"

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->a:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->b:Lcom/comeback/data/ui/cucumber/bean/Video;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getInviteCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->l(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
