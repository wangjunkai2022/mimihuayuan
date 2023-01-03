.class public Lcom/umeng/analytics/pro/q$a;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/umeng/analytics/pro/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/q;-><init>(Lcom/umeng/analytics/pro/q$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/q$a;->a:Lcom/umeng/analytics/pro/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/umeng/analytics/pro/q;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/q$a;->a:Lcom/umeng/analytics/pro/q;

    return-object v0
.end method
