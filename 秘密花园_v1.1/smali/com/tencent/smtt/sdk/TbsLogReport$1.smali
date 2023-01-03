.class public Lcom/tencent/smtt/sdk/TbsLogReport$1;
.super Landroid/os/Handler;
.source "TbsLogReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/TbsLogReport;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/smtt/sdk/TbsLogReport;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/TbsLogReport;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$1;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    check-cast v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    .line 4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 5
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$1;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-static {v1, p1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Lcom/tencent/smtt/sdk/TbsLogReport;ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x259

    if-ne v0, p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$1;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Lcom/tencent/smtt/sdk/TbsLogReport;)V

    :cond_1
    :goto_0
    return-void
.end method
