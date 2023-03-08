.class public Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding$a;
.super Ld/c/b;
.source "AddCollectActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/main/AddCollectActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/main/AddCollectActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding;Lcom/comeback/data/ui/main/AddCollectActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/main/AddCollectActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/main/AddCollectActivity;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/main/AddCollectActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "0sbkgtjb3Yv+jrfanNLZjJ7Y"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-direct {v1}, Lcom/comeback/data/ui/main/bean/CollectVideo;-><init>()V

    .line 6
    iget-object v2, p1, Lcom/comeback/data/ui/main/AddCollectActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/main/bean/CollectVideo;->setUrl(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/comeback/data/ui/main/bean/CollectVideo;->setName(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/comeback/data/ui/main/bean/CollectVideo;->setAddTime(J)V

    .line 9
    invoke-virtual {v1}, Lg/a/g0;->getRealm()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lf/e/a/k/g;->a(Lg/a/g0;)V

    .line 10
    iget-object v0, p1, Lcom/comeback/data/ui/main/AddCollectActivity;->tvUrl:Landroid/widget/TextView;

    new-instance v1, Lf/e/a/j/c0/a;

    invoke-direct {v1, p1}, Lf/e/a/j/c0/a;-><init>(Lcom/comeback/data/ui/main/AddCollectActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
