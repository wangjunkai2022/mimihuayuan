.class public Lcom/umeng/analytics/pro/k$b;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/umeng/analytics/pro/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/k;-><init>(Lcom/umeng/analytics/pro/k$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/k$b;->a:Lcom/umeng/analytics/pro/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/umeng/analytics/pro/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/k$b;->a:Lcom/umeng/analytics/pro/k;

    return-object v0
.end method
