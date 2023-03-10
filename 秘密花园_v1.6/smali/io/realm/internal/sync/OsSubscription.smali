.class public Lio/realm/internal/sync/OsSubscription;
.super Ljava/lang/Object;
.source "OsSubscription.java"

# interfaces
.implements Lg/a/f1/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/sync/OsSubscription$b;,
        Lio/realm/internal/sync/OsSubscription$c;,
        Lio/realm/internal/sync/OsSubscription$d;
    }
.end annotation

.annotation build Lio/realm/internal/KeepMember;
.end annotation


# static fields
.field public static final c:J


# instance fields
.field public final a:J

.field public final b:Lg/a/f1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/f1/k<",
            "Lio/realm/internal/sync/OsSubscription$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/sync/OsSubscription;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/sync/OsSubscription;->c:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsResults;Lg/a/f1/w/a;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/f1/k;

    invoke-direct {v0}, Lg/a/f1/k;-><init>()V

    iput-object v0, p0, Lio/realm/internal/sync/OsSubscription;->b:Lg/a/f1/k;

    .line 3
    iget-wide v1, p1, Lio/realm/internal/OsResults;->a:J

    .line 4
    iget-object v3, p2, Lg/a/f1/w/a;->a:Ljava/lang/String;

    .line 5
    iget-wide v4, p2, Lg/a/f1/w/a;->b:J

    .line 6
    iget-boolean v6, p2, Lg/a/f1/w/a;->c:Z

    .line 7
    invoke-static/range {v1 .. v6}, Lio/realm/internal/sync/OsSubscription;->nativeCreateOrUpdate(JLjava/lang/String;JZ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/realm/internal/sync/OsSubscription;->a:J

    return-void
.end method

.method public static native nativeCreateOrUpdate(JLjava/lang/String;JZ)J
.end method

.method public static native nativeGetError(J)Ljava/lang/Object;
.end method

.method public static native nativeGetFinalizerPtr()J
.end method

.method public static native nativeGetState(J)I
.end method

.method private notifyChangeListeners()V
    .locals 3
    .annotation build Lio/realm/internal/KeepMember;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/sync/OsSubscription;->b:Lg/a/f1/k;

    new-instance v1, Lio/realm/internal/sync/OsSubscription$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/realm/internal/sync/OsSubscription$b;-><init>(Lio/realm/internal/sync/OsSubscription$a;)V

    invoke-virtual {v0, v1}, Lg/a/f1/k;->b(Lg/a/f1/k$a;)V

    return-void
.end method


# virtual methods
.method public a()Lio/realm/internal/sync/OsSubscription$d;
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/sync/OsSubscription;->nativeGetState(J)I

    move-result v0

    .line 2
    invoke-static {}, Lio/realm/internal/sync/OsSubscription$d;->values()[Lio/realm/internal/sync/OsSubscription$d;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    iget v5, v4, Lio/realm/internal/sync/OsSubscription$d;->a:I

    if-ne v5, v0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown value: "

    invoke-static {v2, v0}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/sync/OsSubscription;->c:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->a:J

    return-wide v0
.end method

.method public final native nativeStartListening(J)V
.end method
