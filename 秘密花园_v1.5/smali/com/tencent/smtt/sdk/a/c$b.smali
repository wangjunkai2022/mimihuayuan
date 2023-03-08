.class public Lcom/tencent/smtt/sdk/a/c$b;
.super Ljava/lang/Object;
.source "MttLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/smtt/sdk/a/c$b;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/tencent/smtt/sdk/a/c$b;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/smtt/sdk/a/c$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/a/c$b;-><init>()V

    return-void
.end method
