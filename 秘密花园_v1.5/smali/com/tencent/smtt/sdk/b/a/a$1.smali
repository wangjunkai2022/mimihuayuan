.class public Lcom/tencent/smtt/sdk/b/a/a$1;
.super Landroid/os/Handler;
.source "BrowserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/b/a/a;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/smtt/sdk/b/a/b;Lcom/tencent/smtt/sdk/b/a/b;Lcom/tencent/smtt/sdk/b/a/c;Landroid/widget/ListView;Lcom/tencent/smtt/sdk/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/smtt/sdk/b/a/a;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/b/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/a$1;->a:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/tencent/smtt/sdk/b/a/a$1;->a:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/b/a/a;->b()V

    :goto_0
    return-void
.end method
