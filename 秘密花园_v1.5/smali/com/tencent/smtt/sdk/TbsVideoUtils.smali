.class public Lcom/tencent/smtt/sdk/TbsVideoUtils;
.super Ljava/lang/Object;
.source "TbsVideoUtils.java"


# static fields
.field public static a:Lcom/tencent/smtt/sdk/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-class v0, Lcom/tencent/smtt/sdk/TbsVideoUtils;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/p;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lcom/tencent/smtt/sdk/d;->a(Z)Lcom/tencent/smtt/sdk/d;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v3}, Lcom/tencent/smtt/sdk/d;->a(Landroid/content/Context;ZZ)V

    .line 4
    invoke-static {v1}, Lcom/tencent/smtt/sdk/d;->a(Z)Lcom/tencent/smtt/sdk/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/d;->a()Lcom/tencent/smtt/sdk/r;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/r;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 6
    new-instance p0, Lcom/tencent/smtt/sdk/p;

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/p;-><init>(Lcom/tencent/smtt/export/external/DexLoader;)V

    sput-object p0, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/p;

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static deleteVideoCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/p;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/tencent/smtt/sdk/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getCurWDPDecodeType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/p;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
