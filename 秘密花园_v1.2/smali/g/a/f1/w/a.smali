.class public Lg/a/f1/w/a;
.super Ljava/lang/Object;
.source "SubscriptionAction.java"


# static fields
.field public static final d:Lg/a/f1/w/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg/a/f1/w/a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lg/a/f1/w/a;-><init>(Ljava/lang/String;JZ)V

    sput-object v0, Lg/a/f1/w/a;->d:Lg/a/f1/w/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lg/a/f1/w/a;->a:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lg/a/f1/w/a;->b:J

    .line 4
    iput-boolean p4, p0, Lg/a/f1/w/a;->c:Z

    return-void
.end method
