.class public Lcom/umeng/analytics/CoreProtocol$a;
.super Ljava/lang/Object;
.source "CoreProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/CoreProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/umeng/analytics/CoreProtocol;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/umeng/analytics/CoreProtocol;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/CoreProtocol;-><init>(Lcom/umeng/analytics/CoreProtocol$1;)V

    sput-object v0, Lcom/umeng/analytics/CoreProtocol$a;->a:Lcom/umeng/analytics/CoreProtocol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/umeng/analytics/CoreProtocol;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/CoreProtocol$a;->a:Lcom/umeng/analytics/CoreProtocol;

    return-object v0
.end method
