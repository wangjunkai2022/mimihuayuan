.class public Lcom/tencent/smtt/sdk/o$1;
.super Ljava/lang/Object;
.source "TbsVideoPlayer.java"

# interfaces
.implements Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/o;->a(Ljava/lang/String;Landroid/os/Bundle;Lf/k/a/a/a/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/smtt/sdk/o;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/o$1;->a:Lcom/tencent/smtt/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserStateChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o$1;->a:Lcom/tencent/smtt/sdk/o;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/sdk/q;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/q;->c()V

    return-void
.end method
