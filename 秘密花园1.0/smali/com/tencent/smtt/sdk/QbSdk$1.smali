.class public final Lcom/tencent/smtt/sdk/QbSdk$1;
.super Ljava/lang/Thread;
.source "QbSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/QbSdk;->canOpenFile(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/tencent/smtt/sdk/ValueCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/QbSdk$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/QbSdk$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/QbSdk$1;->c:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/QbSdk$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/t;->a(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->c()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/QbSdk$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/QbSdk$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/tencent/smtt/sdk/QbSdk$1$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/smtt/sdk/QbSdk$1$1;-><init>(Lcom/tencent/smtt/sdk/QbSdk$1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
